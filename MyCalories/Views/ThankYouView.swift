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
        OnboardingCenterView(showButton: true) {
            titleView
            subtitleView
        }
    }
    
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
