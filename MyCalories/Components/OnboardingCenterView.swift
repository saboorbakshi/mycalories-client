//
//  OnboardingCenteredView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-30.
//

import SwiftUI

struct OnboardingCenterView<Content: View>: View {
    @Environment(Router.self) var router
    @Environment(\.currentOnboardingIndex) var currentIndex
    
    let showButton: Bool
    let buttonLabel: String
    let buttonAction: (() -> Void)?
    @ViewBuilder let content: Content
    
    init(
        showButton: Bool = false,
        buttonLabel: String = "Continue",
        buttonAction: (() -> Void)? = nil,
        @ViewBuilder content: () -> Content
    ) {
        self.showButton = showButton
        self.buttonLabel = buttonLabel
        self.buttonAction = buttonAction
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing: Constants.Spacing.large) {
            content
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .padding(.horizontal)
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


#Preview {
    OnboardingCenterView() {
        Text("Center Test")
            .font(Font.questionTitle)
    }
    .withRouter()
}
