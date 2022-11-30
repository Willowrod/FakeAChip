//
//  PersistenceController.swift
//  FakeAChip
//
//  Created by Mike Hall on 01/05/2022.
//

import Foundation
import CoreData

struct PersistenceController {
    // A singleton for our entire app to use
    static let shared = PersistenceController()

    // Storage for Core Data
    let container: NSPersistentContainer
    let context: NSManagedObjectContext

    // A test configuration for SwiftUI previews
    static var preview: PersistenceController = {
        let controller = PersistenceController(inMemory: true)

        return controller
    }()

    // An initializer to load Core Data, optionally able
    // to use an in-memory store.
    init(inMemory: Bool = false) {
        // If you didn't name your model Main you'll need
        // to change this name below.
        container = NSPersistentContainer(name: "FakeAChip")
        context = container.viewContext
        print(container.persistentStoreDescriptions)
        if inMemory {
            container.persistentStoreDescriptions.first?.url = URL(fileURLWithPath: "/dev/null")
        }

        container.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Error: \(error.localizedDescription)")
            }
        }
    }

    func save() {

        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Show some error here
            }
        }
    }

    func saveSnapshot(name: String, snapshot: String) {
        let entity = NSEntityDescription.entity(forEntityName: "Snapshot", in: context)
        let newSnapshot = NSManagedObject(entity: entity!, insertInto: context)
        newSnapshot.setValue(name, forKey: "name")
        newSnapshot.setValue(snapshot, forKey: "snapshot")
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


}
