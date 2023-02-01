//
//  OnboardingView+Page.swift
//  Little Lemon App
//
//  Created by Ryan Paterson on 2023/02/01.
//

import SwiftUI

extension OnboardingView {
    struct Page: View {
        let section: String
        @Binding var binding: String
        @State private var input: String = ""
        let action: () -> Void

        var body: some View {
            Form {
                Image("Logo")
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 5)
                
                Section(section) {
                    TextField(section, text: $input)
                }
                
                Button("NEXT") {
                    binding = input
                    action()
                }
                .disabled(input.isEmpty)
                .font(Font.system(size: 18, weight: .medium))
                .frame(maxWidth: .infinity)
                .padding([.leading, .trailing])
                .padding([.top, .bottom], 10)
                .foregroundColor(Color(red: 237/255, green: 239/255, blue: 238/255))
                .background(Color(red: 73/255, green: 94/255, blue: 87/255))
                .cornerRadius(10)
            }
        }
    }
}
