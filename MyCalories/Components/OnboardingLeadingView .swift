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
    let setPadding: Bool
    @ViewBuilder let content: Content
    
    init(title: String, subtitle: String? = nil, showButton: Bool = false, buttonLabel: String = "Continue", buttonAction: (() -> Void)? = nil, setPadding: Bool = true, @ViewBuilder content: () -> Content) {
        self.title = title
        self.subtitle = subtitle
        self.showButton = showButton
        self.buttonLabel = buttonLabel
        self.buttonAction = buttonAction
        self.setPadding = setPadding
        self.content = content()
    }
    
    // separate text and subtitle from component?
    
    var body: some View {
        VStack(alignment: .leading, spacing: Constants.Spacing.small) {
            Text(title)
                .font(Font.questionTitle)
                .padding(.top)
                .padding(.horizontal)
            
            if let subtitle = subtitle {
                Text(subtitle)
                    .font(Font.questionSubtitle)
                    .foregroundColor(.foregroundSecondary)
                    .padding(.horizontal)
            }
            
            Spacer()
            
            if setPadding {
                content.padding(.horizontal)
            } else {
                content
            }

        }
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
