//
//  SignUpView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct SignUpView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingLeadingView(
            title: "Save your progress"
        ) {
            AppButton(label: "Sign in with Apple", type: .primary) {
            }
        }
    }
}

#Preview {
    SignUpView()
        .withRouter()
}
