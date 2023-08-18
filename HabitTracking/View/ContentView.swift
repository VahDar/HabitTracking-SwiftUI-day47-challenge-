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
    @ObservedObject var habit: ShowHabitsViewModel
    var body: some View {
        NavigationView {
            List {
                ForEach(habits.items) { item in
                    NavigationLink(destination: HabitDetail(habitDetail: item, habit: Habits(), habitsVM: ShowHabitsViewModel(habits: Habits(), selectedHabits: HabitItem(title: "", description: ""))) ) {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(item.title)
                                    .font(.title.bold())
                                
                                HStack {
                                    Image(systemName: "flag.circle")
                                    Text("\(habit.selectedHabits.numberOfTimes)")
                                    Spacer()
                                }
                                Text(item.description)
                            }
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
                EditButton()
            }
            .sheet(isPresented: $showingAddHabits) {
                AddHabit(habits: habits)
            }
            .navigationViewStyle(.stack)
        }
        
        
    }
    func removeItems(at offsets: IndexSet) {
        habits.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(habit: ShowHabitsViewModel(habits: Habits(), selectedHabits: HabitItem(title: "", description: "")))
    }
}
