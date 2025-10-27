//
//  OnboardingQuestionView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct OnboardingQuestionView<Content: View>: View {
    let title: String
    let subtitle: String?
    let onBack: () -> Void
    @ViewBuilder let options: Content
    
    
    init(
        title: String,
        subtitle: String? = nil,
        onBack: @escaping () -> Void,
        @ViewBuilder options: () -> Content
    ) {
        self.title = title
        self.subtitle = subtitle
        self.onBack = onBack
        self.options = options()
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: Constants.Spacing.small) {
            Text(title)
                .font(Font.questionTitle)
                .padding(.top)
            
            if let subtitle = subtitle {
                Text(subtitle)
                    .font(Font.questionSubtitle)
                    .foregroundColor(.secondaryForeground)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .safeAreaInset(edge: .bottom) {
            VStack {
                options
            }
            .padding(.horizontal)
        }
        .safeAreaInset(edge: .top) {
            OnboardingToolbar {
                onBack()
            }
        }
        .toolbarVisibility(.hidden)
    }
}
