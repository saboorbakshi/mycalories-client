//
//  TrialHistoryView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import SwiftUI

struct TrialHistoryView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "Have you tried other calories tracking apps before?",
            filledCount: 4,
            onBack: { router.pop() }
        ) {
            OptionButton(label: "Yes", icon: .shape(AnyShape(ThumbUp())), color: Color.green) {
                router.navigateToLongTermResults()
            }
            OptionButton(label: "No", icon: .shape(AnyShape(ThumbDown())), color: Color.red) {
                router.navigateToLongTermResults()
            }
        }
    }
}

#Preview {
    TrialHistoryView()
        .withRouter()
}
