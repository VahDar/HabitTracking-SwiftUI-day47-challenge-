//
//  HabitDatail.swift
//  HabitTracking
//
//  Created by Vakhtang on 17.08.2023.
//

import SwiftUI

struct HabitDetail: View {
    var habitDetail: HabitItem
    @ObservedObject var habit: Habits
    var habitsVM: ShowHabitsViewModel
    var body: some View {
        NavigationView {
            CustomViewDetails(habitDetail: HabitItem(title: habitDetail.title, description: habitDetail.description), habits: habitsVM)
                .padding(.bottom, 200)
        }

        
    }
}

struct HabitDatail_Previews: PreviewProvider {
    static var previews: some View {
        HabitDetail(habitDetail: HabitItem(title: "Test", description: "Test", numberOfTimes: 0), habit: Habits(), habitsVM: ShowHabitsViewModel(habits: Habits(), selectedHabits: HabitItem(title: "", description: "")))
                
    }
}
