//
//  ButtonStyles.swift
//  Little Lemon App
//
//  Created by Ryan Paterson on 2023/02/01.
//

import SwiftUI

struct BorderButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.system(size: 16, weight: .medium))
            .padding([.leading, .trailing])
            .padding([.top, .bottom], 10)
            .foregroundColor(Color(red: 73/255, green: 94/255, blue: 87/255))
            .overlay(
                RoundedRectangle(cornerRadius: 7)
                    .stroke(Color(red: 73/255, green: 94/255, blue: 87/255), lineWidth: 1)
            )
    }
}

struct FillButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(Font.system(size: 16, weight: .medium))
            .padding([.leading, .trailing])
            .padding([.top, .bottom], 10)
            .foregroundColor(Color(red: 237/255, green: 239/255, blue: 238/255))
            .background(Color(red: 73/255, green: 94/255, blue: 87/255))
            .cornerRadius(7)
            .padding(10)
    }
}
