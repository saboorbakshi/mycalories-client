//
//  ObstacleView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-30.
//

import SwiftUI

struct ObstacleView: View {
    @Environment(Router.self) var router
    @Environment(\.currentOnboardingIndex) var currentIndex
    
    var body: some View {
        OnboardingLeadingView(
            title: "What's stopping you from reaching your goals?"
        ) {
            OptionButtonList(
                options: [
                    OptionButtonInfo(label: "Lack of consistency", icon: .shape(AnyShape(Statistics())), color: .purple),
                    OptionButtonInfo(label: "Unhealthy eating habits", icon: .shape(AnyShape(Cookie())), color: .brown),
                    OptionButtonInfo(label: "Lack of support", icon: .shape(AnyShape(FistBump())), color: .cyan),
                    OptionButtonInfo(label: "Busy schedule", icon: .shape(AnyShape(CalendarClock())), color: .orange),
                    OptionButtonInfo(label: "Lack of meal inspiration", icon: .shape(AnyShape(FoodBowl())), color: .mint)
                ]
            ) {
                router.push(OnboardingRoute.allCases[currentIndex + 1])
            }
        }
    }
}
