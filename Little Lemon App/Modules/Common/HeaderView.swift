//
//  HeaderView.swift
//  Little Lemon App
//
//  Created by Ryan Paterson on 2023/02/01.
//

import SwiftUI

// Generic app header (logo and placeholder image)
struct HeaderView: View {
    var body: some View {
        HStack {
            Spacer()
            
            Image("Logo")
                .padding(.leading)
            
            Spacer()
            
            Image("profile-image-placeholder")
                .resizable()
                .frame(width: 50, height: 50)
        }
        .padding([.leading, .trailing])
    }
}
