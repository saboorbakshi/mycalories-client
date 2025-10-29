//
//  GeneratePlanView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct GeneratePlanView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "Time to generate your custom plan",
            onBack: { router.pop() }
        ) {
            AppButton(label: "Continue", type: .primary) {
                router.navigateToSettingUpPlan()
            }
        }
    }
}
#Preview {
    GeneratePlanView()
        .withRouter()
}
