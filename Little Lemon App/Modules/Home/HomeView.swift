//
//  Home.swift
//  Little Lemon App
//
//  Created by Ryan on 2023/02/01.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            Menu()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .navigationBarBackButtonHidden(true)
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}
