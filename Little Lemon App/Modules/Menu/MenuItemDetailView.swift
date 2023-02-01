//
//  MenuItemSummaryView.swift
//  Little Lemon App
//
//  Created by Ryan on 2023/02/01.
//

import SwiftUI

struct MenuItemDetailView: View {
    let title: String
    let price: String
    let image: String
    let description: String
    
    var body: some View {
        ScrollView{
            VStack{
                HStack {
                    Text(title)
                        .font(Font.system(size: 16, weight: .bold))
                        .padding()
                        .foregroundColor(Color(red: 73/255, green: 94/255, blue: 87/255))
                    
                    Text("$\(price)")
                        .font(Font.system(size: 16, weight: .bold))
                        .padding()
                        .foregroundColor(Color(red: 73/255, green: 94/255, blue: 87/255))
                }
                
                Text(description)
                
                AsyncImage(url: URL(string: image)) { phase in
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
                .frame(width: 200, height: 200)
            }
        }
    }
}
