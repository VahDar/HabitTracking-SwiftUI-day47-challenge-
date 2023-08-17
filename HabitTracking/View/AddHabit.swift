//
//  AddHabit.swift
//  HabitTracking
//
//  Created by Vakhtang on 17.08.2023.
//

import SwiftUI

struct AddHabit: View {
    @ObservedObject var habits: Habits
    @Environment(\.dismiss) var dismiss
   
    var body: some View {
        NavigationView {
            CustomView(habits: habits)
                .cornerRadius(20)
                .frame(width: 350,height: 450)
                .shadow(color: Color.gray, radius: 6, x: 3, y: 3)
                .padding(.bottom, 200)
            
        }
        .background(Color.white)
    }
}

struct AddHabit_Previews: PreviewProvider {
    static var previews: some View {
        AddHabit(habits: Habits())
    }
}
