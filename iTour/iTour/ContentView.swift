//
//  ContentView.swift
//  iTour
//
//  Created by singsys on 04/10/23.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query var destinations: [Destination]
    @State var path = [Destination]()
    
    var body: some View {
        NavigationStack(path: $path) {
            DestinationListingView()
                .navigationTitle("iTour")
                .navigationBarTitleDisplayMode(.large)
                .navigationDestination(for: Destination.self, destination: EditDestinationView.init)
                .toolbar {
                    // MARK: for static data
//                    Button("Add Samples", action: addSamples)
                    Button("Add Destination",systemImage: "plus", action: addDestination)
                    Button("SAVE", action: saveDestination)
                }
        }
    }
    // MARK: - Static function
//    func addSamples()  {
//        let rome = Destination(name: "Rome")
//        let florence = Destination(name: "Florence")
//        let naples = Destination(name: "Naples")
//
//        modelContext.insert(rome)
//        modelContext.insert(florence)
//        modelContext.insert(naples)
//    }
    func addDestination() {
        let destination = Destination()
        modelContext.insert(destination)
        path = [destination]
    }
    func saveDestination() {
        
    }
}

#Preview {
    ContentView()
}
