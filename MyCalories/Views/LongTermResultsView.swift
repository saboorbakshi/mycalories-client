//
//  LongTermResultsView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct LongTermResultsView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "MyCalories creates long term results",
            filledCount: 5,
            onBack: { router.pop() }
        ) {
            AppButton(label: "Continue", type: .primary) {
                router.navigateToHeightAndWeight()
            }
        }
    }
}

#Preview {
    LongTermResultsView()
        .withRouter()
}

