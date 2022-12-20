//
//  PersistenceController.swift
//  FakeAChip
//
//  Created by Mike Hall on 01/05/2022.
//

import Foundation
import CoreData

struct PersistenceController {
    static let shared = PersistenceController()

    let container: NSPersistentContainer
    let context: NSManagedObjectContext

    init(inMemory: Bool = false) {
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

    func delete(_ toDelete: NSFetchRequest<NSFetchRequestResult>){
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: toDelete)

        do {
            try context.execute(deleteRequest)
            try context.save()
        } catch {
            print(error.localizedDescription)
        }
    }
}
