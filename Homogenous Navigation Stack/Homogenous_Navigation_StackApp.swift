//
//  Homogenous_Navigation_StackApp.swift
//  Homogenous Navigation Stack
//
//  Created by CarlSmith on 10/30/23.
//

import SwiftUI

@main
struct Homogenous_Navigation_StackApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                OnboardingView()
                .navigationDestination(for: Route.self) { route in
                    route.view
                }
            }
        }
    }
}
