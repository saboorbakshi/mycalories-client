//
//  OnboardingToolbar.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import SwiftUI

struct OnboardingToolbar: View {
    let filledCount: Int
    let onBackTap: () -> Void
    
    let totalCount: Int = 19

    var body: some View {
        HStack {
            Button(action: onBackTap) {
                Text("Back")
                    .font(Font.icon)
                    .padding(.horizontal, Constants.Padding.iconButtonTextInset)
                    .frame(height: Constants.Size.iconButton)
                    .foregroundColor(.foregroundSecondary)
                    .background(.backgroundSecondary)
                    .cornerRadius(Constants.Radius.full)
            }
            
            Spacer()
            
            HStack(spacing: 6) {
                ForEach(0...totalCount, id: \.self) { index in
                    RoundedRectangle(cornerRadius: Constants.Radius.full)
                        .fill(index < filledCount ? Color.foregroundSecondary : Color.foregroundSecondary.opacity(0.2))
                        .frame(width: 3, height: 15)
                }
            }
            
            Spacer()
            
            // Invisible placeholder to balance layout
            Button(action: {}) {
                Text("Back")
                    .font(Font.icon)
                    .padding(.horizontal, Constants.Padding.iconButtonTextInset)
                    .frame(height: Constants.Size.iconButton)
                    .opacity(0)
            }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    OnboardingToolbar(filledCount: 7) {
        print("Button Pressed")
    }
}
