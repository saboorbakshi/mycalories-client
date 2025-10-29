//
//  RatingView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct RatingView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "Give us a rating",
            filledCount: 16,
            onBack: { router.pop() }
        ) {
            AppButton(label: "Continue", type: .primary) {
                router.navigateToNotifications()
            }
        }
    }
}

#Preview {
    RatingView()
        .withRouter()
}
