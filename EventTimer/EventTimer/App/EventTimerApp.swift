//
//  EventTimerApp.swift
//  EventTimer
//
//  Created by Rodion on 06.09.2025.
//

import SwiftUI
import SwiftData

@main
struct EventTimerApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            CountdownEvent.self,
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
            TimerView()
        }
        .modelContainer(sharedModelContainer)
    }
}
