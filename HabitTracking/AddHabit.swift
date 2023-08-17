//
//  AddHabit.swift
//  HabitTracking
//
//  Created by Vakhtang on 17.08.2023.
//

import SwiftUI

struct CustomTextEditor: View {
    @Binding var text: String
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .topLeading) {
                Color.white
                TextEditor(text: $text)
                    .multilineTextAlignment(.leading)
                    .frame(width: geometry.size.width, height: geometry.size.height)
            }
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.black, lineWidth: 1)
            )
        }
    }
}

struct CustomView: View {
    @State private var title = ""
    @State private var description = ""
    @State private var numberOfTimes = 0
    var body: some View {
        Form {
            TextField("Title", text: $title)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black, lineWidth: 1)
                )
                
            Section {
               CustomTextEditor(text: $description)
                    .frame( height: 150)
                    .padding(.top)
                    
            }
            
        }
    }
}

struct AddHabit: View {
    @ObservedObject var habits: Habits
    @Environment(\.dismiss) var dismiss
   
    
    var body: some View {
        NavigationView {
            CustomView()
                .cornerRadius(20)
                .frame(width: 350,height: 400)
                .shadow(color: Color.gray, radius: 6, x: 5, y: 2)
                .padding(.bottom, 200)
            
        }
    }
}

struct AddHabit_Previews: PreviewProvider {
    static var previews: some View {
        AddHabit(habits: Habits())
    }
}
