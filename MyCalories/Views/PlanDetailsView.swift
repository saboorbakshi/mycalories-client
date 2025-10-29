//
//  PlanDetailsView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct PlanDetailsView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "Congratulations! Your custom plan is ready",
            onBack: { router.pop() }
        ) {
            AppButton(label: "Continue", type: .primary) {
                router.navigateToSaveProgress()
            }
        }
    }
}

#Preview {
    PlanDetailsView()
        .withRouter()
}
