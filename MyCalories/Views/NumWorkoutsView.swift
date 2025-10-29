//
//  NumWorkoutsView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct NumWorkoutsView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "How many workouts do you do per week?",
            subtitle: "This will be used to calibrate your custom plan.",
            filledCount: 2,
            onBack: { router.pop() }
        ) {
            OptionButton(label: "0-2", icon: .shape(AnyShape(OneDot())), color: .red) {
                router.navigateToDiscovery()
            }
            OptionButton(label: "3-5",  icon: .shape(AnyShape(ThreeDots())), color: .yellow) {
                router.navigateToDiscovery()
            }
            OptionButton(label: "6+",  icon: .shape(AnyShape(SixDots())), color: .green) {
                router.navigateToDiscovery()
            }
        }
    }
}

#Preview {
    NumWorkoutsView()
        .withRouter()
}
