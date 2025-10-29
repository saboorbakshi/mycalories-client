//
//  WeightGoalView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

// <0x1142292c0> Gesture: System gesture gate timed out due to SFSymbol use
// Probably something to do with ScaleButtonStyle

struct WeightGoalView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "What is your goal?",
            subtitle: "This helps us generate a plan for your calorie intake.",
            filledCount: 8,
            onBack: { router.pop() }
        ) {
            OptionButton(label: "Lose weight", icon: .systemName("chart.line.downtrend.xyaxis"), color: .green) {
                router.navigateToTargetWeight()
            }
            OptionButton(label: "Maintain weight", icon: .systemName("chart.line.flattrend.xyaxis"), color: .blue) {
                router.navigateToTargetWeight()
            }
            OptionButton(label: "Gain weight", icon: .systemName("chart.line.uptrend.xyaxis"), color: .red) {
                router.navigateToTargetWeight()
            }
        }
    }
}

#Preview {
    WeightGoalView()
        .withRouter()
}
