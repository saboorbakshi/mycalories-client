//
//  NotificationsView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct NotificationsView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "Reach your goals with notifications",
            filledCount: 17,
            onBack: { router.pop() }
        ) {
            AppButton(label: "Continue", type: .primary) {
                router.navigateToGeneratePlan()
            }
        }
    }
}

#Preview {
    NotificationsView()
        .withRouter()
}
