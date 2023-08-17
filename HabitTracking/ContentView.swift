//
//  ContentView.swift
//  HabitTracking
//
//  Created by Vakhtang on 17.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var habits = Habits()
    @State private var showingAddHabits = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(habits.items) { item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.name)
                                .font(.headline)
                        }
                    }
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("HabitTracking")
            .toolbar {
                Button {
                    showingAddHabits = true
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
        
        
    }
    func removeItems(at offsets: IndexSet) {
        habits.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
