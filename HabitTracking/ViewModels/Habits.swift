//
//  Habits.swift
//  HabitTracking
//
//  Created by Vakhtang on 17.08.2023.
//

import Foundation

class Habits: ObservableObject {
    
    @Published var items = [HabitItem]() {
        didSet {
            if let encoder = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoder, forKey: "Items")
            }
        }
    }
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            do {
                let decoderItems = try JSONDecoder().decode([HabitItem].self, from: savedItems)
                items = decoderItems
            } catch {
                print("Error decoding data: \(error)")
            }
        }
    }
    
    func updateHbits(_ habitsItem: HabitItem) {
        if let index = items.firstIndex(where: { $0.id == habitsItem.id }) {
                    items[index] = habitsItem
                }
    }
    
    func saveToUserDefaults() {
        do {
            let encodedData = try JSONEncoder().encode(items)
            UserDefaults.standard.set(encodedData, forKey: "Items")
        } catch {
            print("Error encoding data: \(error)")
        }
    }

        func increaseCompletionCount(for habit: HabitItem) {
            if let index = items.firstIndex(of: habit) {
                var updatedHabit = items[index]
                updatedHabit.numberOfTimesCountPlus()
                items[index] = updatedHabit
                saveToUserDefaults()
            }
        }
}
