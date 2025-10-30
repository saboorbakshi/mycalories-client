//
//  AccomplishView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-30.
//

import SwiftUI

struct AccomplishView: View {
    @Environment(Router.self) var router
    @Environment(\.currentOnboardingIndex) var currentIndex
    
    var body: some View {
        OnboardingLeadingView(
            title: "What would you like to accomplish?",
            subtitle: Constants.Messages.customPlan
        ) {
            OptionButtonList(
                options: [
                    OptionButtonInfo(label: "Eat and live healthier", icon: .shape(AnyShape(Steak())), color: .red),
                    OptionButtonInfo(label: "Boost my energy and mood", icon: .shape(AnyShape(Star())), color: .yellow),
                    OptionButtonInfo(label: "Stay motivated and consistent", icon: .shape(AnyShape(Flash())), color: .cyan),
                    OptionButtonInfo(label: "Feel better about my body", icon: .shape(AnyShape(Laurel())), color: .green)
                ]
            ) {
                router.push(OnboardingRoute.allCases[currentIndex + 1])
            }
        }
    }
}
