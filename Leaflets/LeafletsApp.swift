//
//  LeafletsApp.swift
//  Leaflets
//
//  Created by Maddy Foley on 2/24/25.
//

import SwiftUI
import SwiftData

@main
struct LeafletsApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Category.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
