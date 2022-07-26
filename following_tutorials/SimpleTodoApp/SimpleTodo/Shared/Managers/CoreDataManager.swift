//
//  CoreDataManager.swift
//  SimpleTodo
//
//  Created by Kayla on 7/25/22.
//  Credits to azamsharp
//  Youtube Video Link:
//  https://www.youtube.com/watch?v=CZ79PpB7HIo

import Foundation
import CoreData

class CoreDataManager {
    let persistentContainer: NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()
    
    private init(){
        persistentContainer = NSPersistentContainer(name: "SimpleTodoModel")
        persistentContainer.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Unable to initialize Core Data \(error)")
            }
            
        }
    }
}
