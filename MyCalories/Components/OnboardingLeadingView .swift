//
//  OnboardingLeadingView .swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-30.
//

import SwiftUI

struct OnboardingLeadingView<Content: View>: View {
    @Environment(Router.self) var router
    @Environment(\.currentOnboardingIndex)
    
    var currentIndex
    let title: String
    let subtitle: String?
    let showButton: Bool
    let buttonLabel: String
    let buttonAction: (() -> Void)?
    @ViewBuilder let content: Content
    
    init(title: String, subtitle: String? = nil, showButton: Bool = false, buttonLabel: String = "Continue", buttonAction: (() -> Void)? = nil, @ViewBuilder content: () -> Content) {
        self.title = title
        self.subtitle = subtitle
        self.showButton = showButton
        self.buttonLabel = buttonLabel
        self.buttonAction = buttonAction
        self.content = content()
    }
    
    // separate text and subtitle from component?
    
    var body: some View {
        VStack(alignment: .leading, spacing: Constants.Spacing.small) {
            Text(title)
                .font(Font.questionTitle)
                .padding(.top)
            
            if let subtitle = subtitle {
                Text(subtitle)
                    .font(Font.questionSubtitle)
                    .foregroundColor(.foregroundSecondary)
            }
            
            Spacer()
            
            content
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .safeAreaInset(edge: .bottom) {
            if showButton {
                AppButton(label: buttonLabel, type: .primary) {
                    if let buttonAction = buttonAction {
                        buttonAction()
                    } else {
                        router.push(OnboardingRoute.allCases[currentIndex + 1])
                    }
                }
                .padding(.horizontal)
            }
            
        }
        .safeAreaInset(edge: .top) {
            OnboardingToolbar()
        }
        .toolbarVisibility(.hidden)
    }
}
