//
//  HabitItem.swift
//  HabitTracking
//
//  Created by Vakhtang on 17.08.2023.
//

import Foundation

struct HabitItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let description: String
    let numberOfTimes: Double
}
