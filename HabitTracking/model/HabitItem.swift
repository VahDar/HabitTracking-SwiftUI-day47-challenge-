//
//  HabitItem.swift
//  HabitTracking
//
//  Created by Vakhtang on 17.08.2023.
//

import Foundation
import SwiftUI

struct HabitItem: Identifiable, Codable, Equatable {
    var id = UUID()
    let title: String
    let description: String
    var numberOfTimes: Int = 0
    
    func numberOfTimesDescription(count: Int = -1) -> LocalizedStringKey {
        let countValue = count < 0 ? numberOfTimes : count
        return LocalizedStringKey("\(countValue) time")
    }
    mutating func numberOfTimesCountPlus() {
        numberOfTimes += 1
    }
    mutating func numberOfTimesCountMinus() {
        numberOfTimes = numberOfTimes > 1 ? numberOfTimes - 1 : 0
    }
    
}
