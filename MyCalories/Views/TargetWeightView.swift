//
//  TargetWeightView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct TargetWeightView: View {
    @Environment(Router.self) var router
    
    @State private var targetWeight: CGFloat = 70
    @State private var config = HorizontalWheelPicker.Config(count: 200, steps: 10,
                                                             spacing: 10, multiplier: 1)
    
    let weights = Array(40...200)
    
    var body: some View {
        OnboardingQuestionView(
            title: "What is your desired weight?",
            subtitle: Constants.Messages.customPlan,
            onBack: { router.pop() }
        ) {
            HStack(alignment: .lastTextBaseline, spacing: 4) {
                Text ("\(targetWeight, specifier: "%.1f")")
                    .font(.questionTitle)
                Text ("kg")
                    .font(.pickerUnit)
                    .foregroundStyle(.foregroundSecondary)
            }
            
            HorizontalWheelPicker(config: config, value: $targetWeight)
                .padding(.bottom, Constants.Spacing.large)
            
            AppButton(label: "Continue", type: .primary) {
                router.navigateToDateOfBirth()
            }
        }
    }
}

#Preview {
    TargetWeightView()
        .withRouter()
}

