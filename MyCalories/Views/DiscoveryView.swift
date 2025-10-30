//
//  DiscoveryView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-30.
//

import SwiftUI

struct DiscoveryView: View {
    @Environment(Router.self) var router
    @Environment(\.currentOnboardingIndex) var currentIndex
    
    var body: some View {
        OnboardingLeadingView(
            title: "Where did you hear about us?"
        ) {
            OptionButtonList(
                options: [
                    OptionButtonInfo(label: "App Store"),
                    OptionButtonInfo(label: "TikTok"),
                    OptionButtonInfo(label: "Instagram"),
                    OptionButtonInfo(label: "Facebook"),
                    OptionButtonInfo(label: "Friends and Family"),
                    OptionButtonInfo(label: "Other")
                ]
            ) {
                router.push(OnboardingRoute.allCases[currentIndex + 1])
            }
        }
    }
}
