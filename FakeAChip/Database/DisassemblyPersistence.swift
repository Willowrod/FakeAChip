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

    func updateDisassemblyVersion(version: String, json: String) {
        var disassemblyVersion = getVersion(version)
        disassemblyVersion?.setValue(json, forKey: "json")
        disassemblyVersion?.setValue(Date(), forKey: "updatedDate")
        disassemblyVersion?.setValue(false, forKey: "synced")
        save()
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

    func getAllVersions(_ forID: String, major: Int? = nil, minor: Int? = nil) -> [DisassemblyVersion] {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DisassemblyVersion")
        request.predicate = NSPredicate(format: "disassembly == %@", forID)
        if let major {
            request.predicate = NSPredicate(format: "major == %@", major)
        }
        if let minor {
            request.predicate = NSPredicate(format: "minor == %@", minor)
        }
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request) as! [DisassemblyVersion]
            return result
        } catch {
            print("Failed")
        }
        return []
    }

    func getLatestVersion(_ forID: String, major: Int? = nil, minor: Int? = nil) -> DisassemblyVersion {
        let allVersions = getAllVersions(forID, major: major, minor: minor).sorted(by: {$0.longVersion() < $1.longVersion()})
        allVersions.forEach{version in
            print(version.longVersion())
        }
        return allVersions.last!
    }

    func getVersion(_ forID: String) -> DisassemblyVersion? {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "DisassemblyVersion")
        request.predicate = NSPredicate(format: "id == %@", forID)
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request) as! [DisassemblyVersion]
            return result.first
        } catch {
            print("Failed")
        }
        return nil
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

extension DisassemblyVersion {
    func longVersion() -> String {
        return "\(major.padded())\(minor.padded())\(revision.padded())"
    }
}
