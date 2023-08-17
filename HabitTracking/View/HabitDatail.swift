//
//  HabitDatail.swift
//  HabitTracking
//
//  Created by Vakhtang on 17.08.2023.
//

import SwiftUI

struct HabitDatail: View {
    var habitDatail: HabitItem
    var body: some View {
        VStack(alignment: .leading) {
            Text(habitDatail.title)
                .font(.largeTitle.bold())
            Text(habitDatail.description)
            
        }
    }
}

struct HabitDatail_Previews: PreviewProvider {
    static var previews: some View {
        HabitDatail(habitDatail: HabitItem(title: "Test", description: "Test", numberOfTimes: 0))
    }
}
