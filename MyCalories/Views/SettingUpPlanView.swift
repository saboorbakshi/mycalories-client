//
//  SettingUpPlanView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct SettingUpPlanView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "We are setting everything up for you",
            onBack: { router.pop() }
        ) {
            AppButton(label: "Continue", type: .primary) {
                router.navigateToPlanDetails()
            }
        }
    }
}

#Preview {
    SettingUpPlanView()
        .withRouter()
}
