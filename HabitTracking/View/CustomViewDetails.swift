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
    @StateObject var habits: Habits
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(habitDetail.title)
                .font(.largeTitle.bold())
                .frame(maxWidth: .infinity)
            Text(habitDetail.description)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 2)
            Text("______________________________")
                .frame(maxWidth: .infinity)
            Text(habitDetail.numberOfTimes < 2 ? "You did \(habitDetail.numberOfTimes) time" : "You did \(habitDetail.numberOfTimes) times")
                .frame(maxWidth: .infinity)
                .padding(.top)
            
            HStack(alignment: .center) {
                Spacer()
                CustomButton(title: "No", background: .red) {
                    dismiss()
                }
                Spacer()
                CustomButton(title: "Yes", background: .green) {
                    
                    dismiss()
                    
                }
                Spacer()
            }
            
        }
    }
}

struct CustomViewDetails_Previews: PreviewProvider {
    static var previews: some View {
        CustomViewDetails(habitDetail: HabitItem(title: "Test", description: "Test", numberOfTimes: 0), habits: Habits())
    }
}
