//
//  PrimaryButton.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import SwiftUI

struct PrimaryButton: View {
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .font(Font.button)
                .frame(height: Constants.Height.primaryButton)
                .frame(maxWidth: .infinity)
                .background(Color.buttonBackground)
                .foregroundColor(.buttonForeground)
                .cornerRadius(Constants.Radius.full)
                .padding(.horizontal)
        }
        .buttonStyle(ScaleButtonStyle())
    }
}


#Preview {
    PrimaryButton(label: "Continue") {
        print("Button pressed")
    }
}
