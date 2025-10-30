//
//  RealisticTargetView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-28.
//

import SwiftUI

struct RealisticTargetView: View {
    @Environment(Router.self) var router
    @Environment(\.currentOnboardingIndex) var currentIndex
    
    let targetWeight: Float = 78.3
    
    private var goalType: String {
        if targetWeight < 78 {
            return "Losing"
        } else if targetWeight > 78 {
            return "Gaining"
        } else {
            return "Maintaining"
        }
    }
    
    var body: some View {
        OnboardingCenterView(
            showButton: true,
            buttonAction: {
                if goalType == "Maintaining" {
                    router.push(OnboardingRoute.allCases[currentIndex + 2])
                } else {
                    router.push(OnboardingRoute.allCases[currentIndex + 1])
                }
            }
        ) {
            titleView
            subtitleView
        }
    }
    
    private var titleView: some View {
        Group {
            Text("\(goalType) ")
            +
            Text("\(String(format: "%.1f", targetWeight)) kg ")
                .foregroundColor(.green)
            +
            Text("""
                is a
                realistic target. It's not
                hard at all!
                """)
        }
        .font(Font.questionTitle)
        .foregroundColor(.foregroundPrimary)
        .multilineTextAlignment(.center)
    }
    
    private var subtitleView: some View {
        Text("""
            90% of users say that the change is 
            obvious after using MyCalories and it is
            not easy to rebound.
            """)
            .font(Font.questionSubtitle)
            .foregroundColor(.foregroundSecondary)
            .multilineTextAlignment(.center)
            .padding(.horizontal, Constants.Padding.large)
    }
}

#Preview {
    RealisticTargetView()
        .withRouter()
}

