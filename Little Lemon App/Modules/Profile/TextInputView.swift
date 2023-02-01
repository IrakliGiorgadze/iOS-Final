//
//  TextInputView.swift
//  Little Lemon App
//
//  Created by Ryan Paterson on 2023/02/01.
//

import SwiftUI

// MARK: - TextInputView
extension ProfileView {
    struct TextInputView: View {
        let title: String
        let value: String
        
        var body: some View {
            Text(title)
                .foregroundColor(Color(red: 175/255, green: 175/255, blue: 175/255))
                .bold()
                .padding([.leading, .trailing], 20)
            
            Text(value)
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .leading)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color(red: 175/255, green: 175/255, blue: 175/255), lineWidth: 1)
                )
                .padding([.leading, .trailing], 20)
        }
    }
}
