//
//  RealisticTargetView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-28.
//

import SwiftUI

struct RealisticTargetView: View {
    @Environment(Router.self) var router
    
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
        VStack(spacing: Constants.Spacing.large) {
            titleView
            subtitleView
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .padding(.horizontal)
        .safeAreaInset(edge: .bottom) {
            AppButton(label: "Continue", type: .primary) {
                goalType == "Maintaining"
                ? router.navigateToObstacle()
                : router.navigateToPace()
            }
            .padding(.horizontal)
        }
        .safeAreaInset(edge: .top) {
            OnboardingToolbar {
                router.pop()
            }
        }
        .toolbarVisibility(.hidden)
    }
    
    // MARK: - Components
    
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

