//
//  ContentView.swift
//  Hike
//
//  Created by Manuel Sanchez Sicilia on 7/3/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        CardView()
    }
}

#Preview {
    ContentView()
}
