//
//  PotentialView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct PotentialView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "You have great potential to crush your goal",
            filledCount: 14,
            onBack: { router.pop() }
        ) {
            AppButton(label: "Continue", type: .primary) {
                router.navigateToThankYou()
            }
        }
    }
}

#Preview {
    PotentialView()
        .withRouter()
}
