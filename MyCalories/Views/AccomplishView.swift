//
//  AccomplishView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-29.
//

import SwiftUI

struct AccomplishView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "What would you like to accomplish?",
            subtitle: Constants.Messages.customPlan,
            filledCount: 13,
            onBack: { router.pop() }
        ) {
            OptionButton(label: "Eat and live healthier", icon: .shape(AnyShape(Steak())), color: Color.red) {
                router.navigateToThankYou()
            }
            OptionButton(label: "Boost my energy and mood", icon: .shape(AnyShape(Star())), color: Color.yellow) {
                router.navigateToThankYou()
            }
            OptionButton(label: "Stay motivated and consistent", icon: .shape(AnyShape(Flash())), color: Color.cyan) {
                router.navigateToThankYou()
            }
            OptionButton(label: "Feel better about my body", icon: .shape(AnyShape(Laurel())), color: Color.green) {
                router.navigateToThankYou()
            }
        }
    }
}

#Preview {
    AccomplishView()
        .withRouter()
}
