//
//  TargetWeightView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct TargetWeightView: View {
    @Environment(Router.self) var router
    
    @State private var config = HorizontalWheelPicker.Config(count: 30)
    @State private var value: CGFloat = 70
    
    let weights = Array(40...200)
    
    var body: some View {
        OnboardingQuestionView(
            title: "What is your desired weight?",
            subtitle: Constants.Messages.customPlan,
            onBack: { router.pop() }
        ) {
            HStack(alignment: .lastTextBaseline, spacing: 4, content: {
                Text (verbatim: "\(value)")
                    .font(.questionTitle)
                    .contentTransition(.numericText(value: value))
                    .animation(.snappy, value: value)
                Text ("kg")
                    .font(.pickerUnit)
                    .textScale(.secondary)
                    .foregroundStyle(.gray)
            })
                
            
            HorizontalWheelPicker(config: config, value: $value)
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

