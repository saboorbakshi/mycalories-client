//
//  DiscoveryView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct DiscoveryView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "Where did you hear about us?",
            onBack: { router.pop() }
        ) {
            OptionButton(label: "App Store") {
                router.navigateToTrialHistory()
            }
            OptionButton(label: "TikTok") {
                router.navigateToTrialHistory()
            }
            OptionButton(label: "Instagram") {
                router.navigateToTrialHistory()
            }
            OptionButton(label: "Facebook") {
                router.navigateToTrialHistory()
            }
            OptionButton(label: "Friends and Family") {
                router.navigateToTrialHistory()
            }
            OptionButton(label: "Other") {
                router.navigateToTrialHistory()
            }
        }
    }
}

#Preview {
    DiscoveryView()
        .withRouter()
}
