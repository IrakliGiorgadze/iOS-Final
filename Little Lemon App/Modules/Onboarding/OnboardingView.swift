//
//  OnboardingVIew.swift
//  Little Lemon App
//
//  Created by Ryan Paterson on 2023/02/01.
//

import SwiftUI

struct OnboardingView: View {
    
    // Defaults
    @AppStorage("shouldShowOnboarding") private var shouldShowOnboarding: Bool = true
    @AppStorage("firstName") private var firstName: String = ""
    @AppStorage("lastName") private var lastName: String = ""
    @AppStorage("email") private var email: String = ""
    
    // Local states
    @State private var tabIndex = 0
    
    var body: some View {
        TabView(selection: $tabIndex) {
            Page(section: "First Name", binding: $firstName) {
                tabIndex += 1
            }.tag(0)
            
            Page(section: "Last Name", binding: $lastName) {
                tabIndex += 1
            }.tag(1)
            
            Page(section: "Email Address", binding: $email) {
                shouldShowOnboarding = false
            }.tag(2)
        }
    }
}
