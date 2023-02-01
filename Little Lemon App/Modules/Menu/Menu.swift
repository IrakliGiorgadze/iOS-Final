//
//  Menu.swift
//  Little Lemon App
//
//  Created by Ryan on 2023/02/01.
//

import SwiftUI

struct Menu: View {
    @State var searchText = ""
    
    var body: some View {
        VStack {
            HeaderView()
            HeroView(searchText: $searchText)
            MenuBreakdownView()
            MenuListView(searchText: $searchText)
        }
    }
}
