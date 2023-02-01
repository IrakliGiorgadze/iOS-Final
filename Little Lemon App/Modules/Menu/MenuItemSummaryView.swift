//
//  MenuItemSummaryView.swift
//  Little Lemon App
//
//  Created by Ryan Paterson on 2023/02/01.
//

import SwiftUI

struct MenuItemSummaryView: View {
    let dish: Dish

    var body: some View {
        VStack {
            HStack{
                VStack(alignment: .leading) {
                    Text(dish.title ?? "")
                        .font(Font.system(size: 16, weight: .bold))
                        .padding(.bottom, 2)
                        .foregroundColor(Color(red: 73/255, green: 94/255, blue: 87/255))
                    
                    Text(dish.dishDescription ?? "")
                        .multilineTextAlignment(.leading)
                        .font(Font.system(size: 16, weight: .regular))
                        .foregroundColor(Color(red: 73/255, green: 94/255, blue: 87/255))
                        .frame(width: 280, alignment: .leading )
                    
                    Text("$\(dish.price ?? "")")
                        .font(Font.system(size: 16, weight: .bold))
                        .padding(.top, 2)
                        .foregroundColor(Color(red: 73/255, green: 94/255, blue: 87/255))
                }
                
                AsyncImage(url: URL(string: dish.image ?? "")) { phase in
                    switch phase {
                    case .empty : Image(systemName: "exclamationmark.icloud")
                            .foregroundColor(Color(red: 73/255, green: 94/255, blue: 87/255))
                    case .success(let image):
                        image.resizable()
                            .scaledToFit()
                    case .failure(_):
                        Image(systemName: "exclamationmark.icloud")
                            .foregroundColor(Color(red: 73/255, green: 94/255, blue: 87/255))
                    @unknown default:
                        Image(systemName: "exclamationmark.icloud")
                            .foregroundColor(Color(red: 73/255, green: 94/255, blue: 87/255))
                    }
                    
                }
                .frame(width: 70, height: 70)
                .frame(maxWidth: 150, maxHeight: 150)
            }
            
            Divider()
                .background(Color(red: 237/255, green: 239/255, blue: 238/255))
                .padding(.top, 5)
        }
        .padding([.leading, .trailing], 20)
    }
}
