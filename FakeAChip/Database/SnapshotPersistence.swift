//
//  SnapshotPersistence.swift
//  FakeAChip
//
//  Created by Mike Hall on 02/12/2022.
//

import Foundation
import CoreData

extension PersistenceController {
    func saveSnapshot(name: String, snapshot: String, screenShot: String) {
        let entity = NSEntityDescription.entity(forEntityName: "Snapshot", in: context)
        let newSnapshot = NSManagedObject(entity: entity!, insertInto: context)
        newSnapshot.setValue(UUID(), forKey: "id")
        newSnapshot.setValue(name, forKey: "name")
        newSnapshot.setValue(snapshot, forKey: "snapshot")
        newSnapshot.setValue(screenShot, forKey: "screen")
        newSnapshot.setValue(Date(), forKey: "date")
        save()
    }
    
    func getLatestSnapshot() -> String {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Snapshot")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request).first as! NSManagedObject
            return result.value(forKey: "snapshot") as! String
        } catch {
            print("Failed")
        }
        return "XXXXX"
    }
    
    func getAllSnapshots() -> [Snapshot] {
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Snapshot")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.fetch(request) as! [Snapshot]
            return result
        } catch {
            print("Failed")
        }
        return []
    }
    
    func deleteSnapshot(id: String) {
        let snapshotDelete = NSFetchRequest<NSFetchRequestResult>(entityName: "Snapshot")
        snapshotDelete.predicate = NSPredicate(format: "id == %@", id)
        delete(snapshotDelete)
    }
}
