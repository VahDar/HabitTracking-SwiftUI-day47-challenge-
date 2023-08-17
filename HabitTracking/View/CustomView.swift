//
//  CustomView.swift
//  HabitTracking
//
//  Created by Vakhtang on 17.08.2023.
//

import SwiftUI

struct CustomView: View {
       @State private var title = ""
       @State private var description = ""
       @State private var numberOfTimes = 0
       @ObservedObject var habits: Habits
       @Environment(\.dismiss) var dismiss
    
       var body: some View {
           
           VStack(alignment: .leading, spacing: 10) {
               Text("New Activity")
                   .font(.largeTitle)
                   .frame(maxWidth: .infinity)
               TextField("Title", text: $title)
                   .padding()
                   .overlay(
                       RoundedRectangle(cornerRadius: 5)
                           .stroke(Color.black, lineWidth: 1)
                   )
               
               CustomTextEditor(text: $description)
                   .frame(height: 150)
                   .background(Color.white)
                   .overlay(
                       RoundedRectangle(cornerRadius: 5)
                           .stroke(Color.black, lineWidth: 1)
                   )
               Text("description")
               HStack(alignment: .center) {
                   Spacer()
                   CustomButton(title: "Cancel", background: .yellow) {
                       dismiss()
                   }
                   Spacer()
                   CustomButton(title: "Create", background: .green) {
                       let item = HabitItem(title: title, description: description, numberOfTimes: numberOfTimes)
                       habits.items.append(item)
                       dismiss()
                       
                   }
                   Spacer()
               }
           }
           .padding()
           .background(Color.white)
       }
   }

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView(habits: Habits())
    }
}
