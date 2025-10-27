//
//  GoalView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct GoalView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "What is your goal?",
            subtitle: "This helps us generate a plan for your calorie intake.",
            onBack: { router.pop() }
        ) {
            OptionButton(label: "Lose weight", icon: .shape(AnyShape(ArrowDown())), color: .green) {
                router.navigateToTargetWeight()
            }
            OptionButton(label: "Maintain weight", icon: .shape(AnyShape(ArrowRight())), color: .blue) {
                router.navigateToTargetWeight()
            }
            OptionButton(label: "Gain weight", icon: .shape(AnyShape(ArrowUp())), color: .red) {
                router.navigateToTargetWeight()
            }
        }
    }
}

#Preview {
    GoalView()
        .withRouter()
}
