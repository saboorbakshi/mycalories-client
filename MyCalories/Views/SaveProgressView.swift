//
//  SaveProgressView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct SaveProgressView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "Save your progress",
            onBack: { router.pop() }
        ) {
            AppButton(label: "Sign in with Apple", type: .primary) {
                router.navigateToPaywall()
            }
        }
    }
}

#Preview {
    SaveProgressView()
        .withRouter()
}
