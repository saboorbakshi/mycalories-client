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
                Text("Back")
            }
            .font(Font.icon)
            .padding(.horizontal, Constants.Padding.iconButtonTextInset)
            .foregroundColor(.foregroundSecondary)
            .frame(height: Constants.Size.iconButton)
            .background(.backgroundSecondary)
            .cornerRadius(Constants.Radius.full)
            
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
