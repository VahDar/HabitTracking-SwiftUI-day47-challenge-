//
//  ShowHabitsViewModel.swift
//  HabitTracking
//
//  Created by Vakhtang on 18.08.2023.
//

import Foundation

class ShowHabitsViewModel: ObservableObject {
    private var habits: Habits
    
    @Published var selectedHabits: HabitItem {
        didSet {
            habits.updateHbits(selectedHabits)
        }
    }
    init(habits: Habits, selectedHabits: HabitItem) {
        self.habits = habits
        self.selectedHabits = selectedHabits
    }
    
    func showHabitsViewModel(for habit: HabitItem) -> ShowHabitsViewModel {
           return ShowHabitsViewModel(habits: self.habits, selectedHabits: habit)
       }
    
    func increaseNumberOfTimes() {
        selectedHabits.numberOfTimesCountPlus()
        habits.updateHbits(selectedHabits)
        habits.saveToUserDefaults()
    }
}
