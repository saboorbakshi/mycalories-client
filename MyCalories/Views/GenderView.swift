//
//  GenderView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-30.
//

import SwiftUI

struct GenderView: View {
    @Environment(Router.self) var router
    @Environment(\.currentOnboardingIndex) var currentIndex
    
    var body: some View {
        OnboardingLeadingView(
            title: "Choose your gender",
            subtitle: Constants.Messages.customPlan
        ) {
            OptionButtonList(
                options: [
                    OptionButtonInfo(label: "Male", icon: .shape(AnyShape(Male())), color: .blue),
                    OptionButtonInfo(label: "Female", icon: .shape(AnyShape(Female())), color: .purple)
                ]) {
                    router.push(OnboardingRoute.allCases[currentIndex + 1])
                }
        }
    }
}
