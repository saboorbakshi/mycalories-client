//
//  ObstacleView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct ObstacleView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "What's stopping you from reaching your goals?",
            filledCount: 12,
            onBack: { router.pop() }
        ) {
            OptionButton(label: "Lack of consistency", icon: .shape(AnyShape(Statistics())), color: .purple) {
                router.navigateToAccomplish()
            }
            OptionButton(label: "Unhealthy eating habits", icon: .shape(AnyShape(Cookie())), color: .brown) {
                router.navigateToAccomplish()
            }
            OptionButton(label: "Lack of support", icon: .shape(AnyShape(FistBump())), color: .cyan) {
                router.navigateToAccomplish()
            }
            OptionButton(label: "Busy schedule", icon: .shape(AnyShape(CalendarClock())), color: .orange) {
                router.navigateToAccomplish()
            }
            OptionButton(label: "Lack of meal inspiration", icon: .shape(AnyShape(FoodBowl())), color: .mint) {
                router.navigateToAccomplish()
            }
        }
    }
}

#Preview {
    ObstacleView()
        .withRouter()
}
