//
//  CealUIApp.swift
//  Homogenous Navigation Stack
//
//  Created by CarlSmith on 10/30/23.
//

// https://stackoverflow.com/questions/74362455/only-root-level-navigation-destinations-are-effective-for-a-navigation-stack-wit

import SwiftUI

enum Route {
    case register
    case userType
    
    @ViewBuilder
    var view: some View {
        switch self {
        case .register:
            RegisterView()
        case .userType:
            UserTypeView()
        }
    }
}


struct OnboardingView: View {
    var body: some View {
        NavigationLink("Onboarding View", value: Route.userType)
    }
}

struct UserTypeView: View {
    var body: some View {
        NavigationLink("User Type View", value: Route.register)
    }
}

struct RegisterView: View {
    var body: some View {
        Text("Register View")
    }
}
