//
//  ThankYouView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct ThankYouView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        VStack(spacing: Constants.Spacing.large) {
            titleView
            subtitleView
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .padding(.horizontal)
        .safeAreaInset(edge: .bottom) {
            AppButton(label: "Continue", type: .primary) {
                router.navigateToRating()
            }
            .padding(.horizontal)
        }
        .safeAreaInset(edge: .top) {
            OnboardingToolbar(filledCount: 15) {
                router.pop()
            }
        }
        .toolbarVisibility(.hidden)
    }
    
    // MARK: - Components
    
    private var titleView: some View {
        Group {
            Text("Thank you ")
            .foregroundColor(.blue)
            +
            Text("""
                for trusting
                us. Let's personalize
                MyCalories for you.
                """)
        }
        .font(Font.questionTitle)
        .foregroundColor(.foregroundPrimary)
        .multilineTextAlignment(.center)
    }
    
    private var subtitleView: some View {
        Text("""
            Your privacy and security matter to 
            us. We promise to keep your personal
            information private and secure.
            """)
            .font(Font.questionSubtitle)
            .foregroundColor(.foregroundSecondary)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
    }
}

#Preview {
    ThankYouView()
        .withRouter()
}
