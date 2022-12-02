//
//  DisassemblyPersistence.swift
//  FakeAChip
//
//  Created by Mike Hall on 02/12/2022.
//

import Foundation
import CoreData

extension PersistenceController {
    func createDisassembly(name: String, snapshot: String, screenShot: String) -> Disassembly{
        let entity = NSEntityDescription.entity(forEntityName: "Disassembly", in: context)
        let newDisassembly = NSManagedObject(entity: entity!, insertInto: context)
        newDisassembly.setValue(UUID(), forKey: "id")
        newDisassembly.setValue(name, forKey: "name")
        newDisassembly.setValue(snapshot, forKey: "originalSnapshot")
        newDisassembly.setValue(screenShot, forKey: "originalScreenShot")
        newDisassembly.setValue(Date(), forKey: "created")
        save()
        return newDisassembly as! Disassembly
    }

    func createDisassemblyVersion(disassembly: String, major: Int, minor: Int, revision: Int, json: String) -> DisassemblyVersion {
        let entity = NSEntityDescription.entity(forEntityName: "DisassemblyVersion", in: context)
        let newDisassemblyVersion = NSManagedObject(entity: entity!, insertInto: context)
        newDisassemblyVersion.setValue(UUID(), forKey: "id")
        newDisassemblyVersion.setValue(disassembly, forKey: "disassembly")
        newDisassemblyVersion.setValue(major, forKey: "major")
        newDisassemblyVersion.setValue(minor, forKey: "minor")
        newDisassemblyVersion.setValue(revision, forKey: "revision")
        newDisassemblyVersion.setValue(json, forKey: "json")
        newDisassemblyVersion.setValue(Date(), forKey: "updatedDate")
        newDisassemblyVersion.setValue(false, forKey: "synced")
        save()
        return newDisassemblyVersion as! DisassemblyVersion
    }

    func getAllDisassemblies() -> [Disassembly] {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Disassembly")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request) as! [Disassembly]
            return result
        } catch {
            print("Failed")
        }
        return []
    }

    func getAllVersions(_ forID: String) -> [DisassemblyVersion] {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DisassemblyVersion")
        request.predicate = NSPredicate(format: "id == %@", forID)
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request) as! [DisassemblyVersion]
            return result
        } catch {
            print("Failed")
        }
        return []
    }

    func deleteDisassemblyVersion(id: String) {
        let versionDelete = NSFetchRequest<NSFetchRequestResult>(entityName: "DisassemblyVersion")
        versionDelete.predicate = NSPredicate(format: "id == %@", id)
        delete(versionDelete)
    }

    func deleteDisassembly(id: String) {
        let versionDelete = NSFetchRequest<NSFetchRequestResult>(entityName: "DisassemblyVersion")
        versionDelete.predicate = NSPredicate(format: "disassembly == %@", id)
        delete(versionDelete)
        let disassemblyDelete = NSFetchRequest<NSFetchRequestResult>(entityName: "Disassembly")
        disassemblyDelete.predicate = NSPredicate(format: "id == %@", id)
        delete(disassemblyDelete)
    }
}
