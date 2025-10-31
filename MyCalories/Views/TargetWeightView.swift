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
        OnboardingLeadingView(
            title: "What is your desired weight?",
            subtitle: Constants.Messages.customPlan,
            showButton: true
        ) {
            VStack {
                HStack(alignment: .lastTextBaseline, spacing: 4) {
                    Text ("\(targetWeight, specifier: "%.1f")")
                        .font(.questionTitle)
                    Text ("kg")
                        .font(Font.custom("SuisseIntl-Medium", size: 20))
                        .foregroundStyle(.foregroundSecondary)
                }
                
                HorizontalWheelPicker(config: config, value: $targetWeight)
                    .padding(.bottom, Constants.Spacing.large)
            }
        }
    }
}

#Preview {
    TargetWeightView()
        .withRouter()
}

