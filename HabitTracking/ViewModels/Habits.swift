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
            if let decoderItems = try? JSONDecoder().decode([HabitItem].self, from: savedItems) {
                items = decoderItems
                return
            }
        }
        items = []
    }
}
