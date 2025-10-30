//
//  NumberOfWorkoutsView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-30.
//

import SwiftUI

struct NumberOfWorkoutsView: View {
    @Environment(Router.self) var router
    @Environment(\.currentOnboardingIndex) var currentIndex
    
    var body: some View {
        OnboardingLeadingView(
            title: "How many workouts do you do per week?",
            subtitle: Constants.Messages.customPlan
        ) {
            OptionButtonList(
                options: [
                    OptionButtonInfo(label: "0–2", icon: .shape(AnyShape(OneDot())), color: .red),
                    OptionButtonInfo(label: "3–5", icon: .shape(AnyShape(ThreeDots())), color: .yellow),
                    OptionButtonInfo(label: "6+", icon: .shape(AnyShape(SixDots())), color: .green)
                ]
            ) {
                router.push(OnboardingRoute.allCases[currentIndex + 1])
            }
        }
    }
}
