//
//  LandmarkAppApp.swift
//  LandmarkApp
//
//  Created by Bryan Nelson on 7/3/22.
//

import SwiftUI

@main
struct LandmarkAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
