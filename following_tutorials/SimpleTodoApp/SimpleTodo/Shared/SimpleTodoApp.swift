//
//  SimpleTodoApp.swift
//
//  Created by Kayla on 7/25/22.
//  Credits to azamsharp
//  Youtube Video Link:
//  https://www.youtube.com/watch?v=CZ79PpB7HIo

import SwiftUI

@main
struct SimpleTodoApp: App {
    
    let persistentContainer = CoreDataManager.shared.persistentContainer
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}
