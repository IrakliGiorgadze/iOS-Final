//
//  Menu+HeroView.swift
//  Little Lemon App
//
//  Created by Ryan Paterson on 2023/02/01.
//

import SwiftUI

// MARK: - Hero View
extension Menu {
    struct HeroView: View {
        @Binding var searchText: String
        
        var body: some View {
            Group {
                ZStack{
                    Rectangle()
                        .foregroundColor(Color(red: 73/255, green: 94/255, blue: 87/255))
                    
                    VStack(){
                        HStack{
                            Text("Little Lemon")
                                .foregroundColor(Color(red: 244/255, green: 206/255, blue: 20/255))
                                .font(Font.custom("Georgia", size: 40))
                                .bold()
                                .padding([.leading], 20)
                            Spacer()
                        }
                        .frame(height: 45)
                        
                        HStack{
                            VStack(alignment: .leading) {
                                Text("Chicago")
                                    .foregroundColor(Color(red: 237/255, green: 239/255, blue: 238/255))
                                    .font(Font.custom("Georgia", size: 30))
                                    .fontWeight(.medium)
                                    .frame(height: 40)
                                
                                Text("We are family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.")
                                    .foregroundColor(Color(red: 237/255, green: 239/255, blue: 238/255))
                                    .font(Font.system(size: 16, weight: .medium))
                                
                                HStack {
                                    Image(systemName: "magnifyingglass.circle.fill")
                                        .resizable()
                                        .foregroundColor(Color(red: 230/255, green: 230/255, blue: 230/255))
                                        .frame(width: 40, height: 40)
                                    
                                    TextField(" Search...", text: $searchText)
                                        .padding(10)
                                        .background(Color(red: 230/255, green: 230/255, blue: 230/255))
                                        .frame(width: 120)
                                        .cornerRadius(20)
                                        .padding(.leading, 5)
                                }
                                .padding(.top, 10)
                            }
                            
                            Rectangle()
                                .aspectRatio(1, contentMode: .fit)
                                .overlay(
                                    Image("Hero image")
                                        .resizable()
                                        .scaledToFill()
                                )
                                .clipShape(Rectangle())
                                .cornerRadius(15)
                                .frame(width: 150, height: 150)
                        }
                        .padding([.leading, .trailing])
                        .padding(.bottom, 20)
                    }
                }
                .frame(height: 300)
            }
        }
    }
}
