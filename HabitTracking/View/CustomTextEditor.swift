//
//  CustomTextEditor.swift
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


