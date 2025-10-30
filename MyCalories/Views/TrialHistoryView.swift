//
//  TrialHistoryView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-30.
//

import SwiftUI

struct TrialHistoryView: View {
    @Environment(Router.self) var router
    @Environment(\.currentOnboardingIndex) var currentIndex
    
    var body: some View {
        OnboardingLeadingView(
            title: "Have you tried other calories tracking apps before?"
        ) {
            OptionButtonList(
                options: [
                    OptionButtonInfo(label: "Yes", icon: .shape(AnyShape(ThumbUp())), color: .green),
                    OptionButtonInfo(label: "No", icon: .shape(AnyShape(ThumbDown())), color: .red)
                ]
            ) {
                router.push(OnboardingRoute.allCases[currentIndex + 1])
            }
        }
    }
}



