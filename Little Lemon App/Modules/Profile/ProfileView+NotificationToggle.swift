//
//  ProfileView+NotificationToggle.swift
//  Little Lemon App
//
//  Created by Ryan Paterson on 2023/02/01.
//

import SwiftUI

// MARK: - NotificationToggle
extension ProfileView {
    struct NotificationToggle: View {
        @State private var isSelected: Bool = false
        let label: String
        
        var body: some View {
            HStack{
                Image(systemName: isSelected ? "checkmark.square.fill" : "square")
                    .foregroundColor(isSelected ? (Color(red: 73/255, green: 94/255, blue: 87/255)) : Color.secondary)
                    .onTapGesture {
                        isSelected.toggle()
                    }
                
                Text(label)
                    .foregroundColor(Color(red: 51/255, green: 51/255, blue: 51/255))
            }
            .padding([.leading, .trailing], 20)
            .padding([.top, .bottom], 5)
        }
    }
}
