//
//  WeightGoalVie.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-30.
//

import SwiftUI

struct WeightGoalView: View {
    @Environment(Router.self) var router
    @Environment(\.currentOnboardingIndex) var currentIndex
    
    var body: some View {
        OnboardingLeadingView(
            title: "What is your goal?",
            subtitle: "This helps us generate a plan for your calorie intake."
        ) {
            OptionButtonList(
                options: [
                    OptionButtonInfo(label: "Lose weight", icon: .systemName("chart.line.downtrend.xyaxis"), color: .green),
                    OptionButtonInfo(label: "Maintain weight", icon: .systemName("chart.line.flattrend.xyaxis"), color: .blue),
                    OptionButtonInfo(label: "Gain weight", icon: .systemName("chart.line.uptrend.xyaxis"), color: .red)
                ]
            ) {
                router.push(OnboardingRoute.allCases[currentIndex + 1])
            }
        }
    }
}
