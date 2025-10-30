//
//  OnboardingToolbar.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import SwiftUI

struct OnboardingToolbar: View {
    @Environment(Router.self) var router
    @Environment(\.currentOnboardingIndex) var currentStep
    
    let totalSteps: Int = OnboardingRoute.allCases.count

    var body: some View {
        HStack {
            ToolbarButton(label: "Back") {
                router.pop()
            }
            
            Spacer()
            
            HStack(spacing: 6) {
                ForEach(0..<totalSteps, id: \.self) { index in
                    RoundedRectangle(cornerRadius: Constants.Radius.full)
                        .fill(index < currentStep + 1 ? Color.foregroundSecondary : Color.foregroundSecondary.opacity(0.2))
                        .frame(width: 3, height: 15)
                }
            }
            
            Spacer()
            
            ToolbarButton(label: "Back") {
                router.pop()
            }
            .opacity(0)
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    OnboardingToolbar()
        .withRouter()
}
