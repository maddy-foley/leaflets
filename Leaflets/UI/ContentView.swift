//
//  ContentView.swift
//  Leaflets
//
//  Created by Maddy Foley on 2/24/25.
//

import SwiftUI
import SwiftData


struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    var body: some View {
        CategoryList()
    }

}

#Preview{
    ContentView()
        .modelContainer(for:Category.self, inMemory: true)
}
