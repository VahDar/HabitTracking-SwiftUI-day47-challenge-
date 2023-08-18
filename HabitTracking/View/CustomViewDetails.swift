//
//  CustomViewDetails.swift
//  HabitTracking
//
//  Created by Vakhtang on 18.08.2023.
//

import SwiftUI

struct CustomViewDetails: View {
    var habitDetail: HabitItem

    @Environment(\.dismiss) var dismiss
    @ObservedObject var habits: ShowHabitsViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(habitDetail.title)
                .font(.largeTitle.bold())
                .frame(maxWidth: .infinity)
                .padding(.top,10)
            Text(habitDetail.description)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 2)
            Text("______________________________")
                .frame(maxWidth: .infinity)
            Text(habits.selectedHabits.numberOfTimes < 2 ? "You did \(habits.selectedHabits.numberOfTimes) time" : "You did \(habits.selectedHabits.numberOfTimes) times")
                .frame(maxWidth: .infinity)
                .padding(.top)
            
            VStack(alignment: .center) {
                Text("Just completed this activity?")
                    .frame(maxWidth: .infinity)
                CustomButton(title: "Yes", background: .green) {
                   habits.increaseNumberOfTimes()
                    
                }
                .padding(.bottom, 20)
                    
            }
            
        }
        .background(Color.white)
       .cornerRadius(20)
       .shadow(color: Color.gray, radius: 6, x: 3, y: 3)
       .padding()
    }
                
}


