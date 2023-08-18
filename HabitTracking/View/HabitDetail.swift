//
//  HabitDatail.swift
//  HabitTracking
//
//  Created by Vakhtang on 17.08.2023.
//

import SwiftUI

struct HabitDetail: View {
    var habitDetail: HabitItem
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(habitDetail.title)
                .font(.largeTitle.bold())
                .frame(maxWidth: .infinity)
            Text(habitDetail.description)
                .frame(maxWidth: .infinity)
            Text("______________________________")
                .frame(maxWidth: .infinity)
            
        }
    }
}

struct HabitDatail_Previews: PreviewProvider {
    static var previews: some View {
        HabitDetail(habitDetail: HabitItem(title: "Test", description: "Test", numberOfTimes: 0))
    }
}
