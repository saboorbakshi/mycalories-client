//
//  NotHardAtAllView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct RealisticTargetView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "Gaining x kg is a realistic target. It's not hard at all!",
            subtitle: "90% of users say that the change is obvious after using MyCalories and it is not easy to rebound.",
            onBack: { router.pop() }
        ) {
            AppButton(label: "Continue", type: .primary) {
                router.navigateToDateOfBirth()
            }
        }
    }
}

#Preview {
    RealisticTargetView()
        .withRouter()
}
