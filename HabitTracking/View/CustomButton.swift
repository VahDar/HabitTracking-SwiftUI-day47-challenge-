//
//  CustomButton.swift
//  HabitTracking
//
//  Created by Vakhtang on 17.08.2023.
//

import SwiftUI

struct CustomButton: View {
    var title: LocalizedStringKey
    var foregroundColor: Color = .white
    var background: Color = .accentColor
    var action: () -> Void
    
    var body: some View {
        Text(title)
            .foregroundColor(foregroundColor)
            .frame(width: 100, height: 40)
            .background(background)
            .clipShape(Capsule())
            .shadow(color: .gray, radius: 2, x: 1, y: 1)
            .onTapGesture {
                action()
        }
    }
}
