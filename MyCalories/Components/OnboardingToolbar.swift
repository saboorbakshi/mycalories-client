//
//  OnboardingToolbar.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import SwiftUI

struct OnboardingToolbar: View {
    let onBackTap: () -> Void

    var body: some View {
        HStack {
            Button(action: onBackTap) {
                Image(systemName: "chevron.left")
            }
            .font(Font.icon)
            .foregroundColor(.foregroundPrimary)
            .frame(width: Constants.Size.iconButton, height: Constants.Size.iconButton)
            .background(
                Circle()
                    .fill(.backgroundSecondary)
            )

            Spacer()
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    OnboardingToolbar {
        print("Button Pressed")
    }
}
