//
//  GeneratePlanView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct GeneratePlanView: View {
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
                router.navigateToSettingUpPlan()
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
            Text("""
                All done!
                Time to generate
                your 
                """)
            +
            Text("custom plan.")
                .foregroundColor(.red)
        }
        .font(Font.questionTitle)
        .foregroundColor(.foregroundPrimary)
        .multilineTextAlignment(.center)
    }
    
    private var subtitleView: some View {
        Text("""
            Great job. You have completed all the 
            steps. It is now time to see your 
            personalized results.
            """)
            .font(Font.questionSubtitle)
            .foregroundColor(.foregroundSecondary)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
    }
}

#Preview {
    GeneratePlanView()
        .withRouter()
}
