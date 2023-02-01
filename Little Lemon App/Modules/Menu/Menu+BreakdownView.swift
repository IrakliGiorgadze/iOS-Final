//
//  Menu+BreakdownView.swift
//  Little Lemon App
//
//  Created by Ryan Paterson on 2023/02/01.
//

import SwiftUI

// MARK: - Menu Breakdown View
extension Menu {
    struct MenuBreakdownView: View {
        struct FilterButton: View {
            let label: String
            let action: () -> Void

            init(_ label: String, action: @escaping () -> Void) {
                self.label = label
                self.action = action
            }
            
            var body: some View {
                Button(label) {
                    action()
                }
                .font(Font.system(size: 16, weight: .bold))
                .padding([.leading, .trailing], 8)
                .padding([.top, .bottom], 10)
                .foregroundColor(Color(red: 73/255, green: 94/255, blue: 87/255))
                .background(Color(red: 237/255, green: 239/255, blue: 238/255))
                .cornerRadius(13)
            }
        }
        var body: some View {
            Group {
                VStack(alignment: .leading){
                    Text("ORDER FOR DELIVERY!")
                        .font(Font.system(size: 18, weight: .bold))
                    
                    ScrollView(.horizontal) {
                        HStack {
                            FilterButton("Starters") {
                            }
                            Spacer()
                            
                            FilterButton("Mains") {
                            }
                            Spacer()
                            
                            FilterButton("Desserts") {
                            }
                            Spacer()
                            
                            FilterButton("Drinks") {
                            }
                        }
                    }

                    Divider()
                        .background(Color(red: 51/255, green: 51/255, blue: 51/255))
                        .padding(.top, 10)
                }
                .padding([.leading, .trailing], 20)
                .padding(.top, 10)
            }
        }
    }
}
