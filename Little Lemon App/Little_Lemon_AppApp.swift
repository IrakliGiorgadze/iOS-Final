//
//  Little_Lemon_AppApp.swift
//  Little Lemon App
//
//  Created by Ryan on 2023/02/01.
//

import SwiftUI

@main
struct Little_LemonApp: App {
    @AppStorage("shouldShowOnboarding") private var shouldShowOnboarding: Bool = true

    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if shouldShowOnboarding  {
                    OnboardingView()
                } else {
                    HomeView()
                }
            }
            .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
