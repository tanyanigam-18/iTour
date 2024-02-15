//
//  iTourApp.swift
//  iTour
//
//  Created by singsys on 04/10/23.
//

import SwiftData
import SwiftUI

@main
struct iTourApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Destination.self ) // MARK: -this tells us that we are creating storage for destination object.
    }
}
