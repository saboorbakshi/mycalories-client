//
//  AppButton.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

enum ButtonType {
    case primary
    case secondary
}

struct AppButton: View {
    let label: String
    let type: ButtonType
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .font(Font.button)
                .frame(height: Constants.Height.primaryButton)
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .foregroundColor(foregroundColor)
                .cornerRadius(Constants.Radius.full)
                .padding(.horizontal)
        }
        .buttonStyle(ScaleButtonStyle())
    }
    
    private var backgroundColor: Color {
        switch type {
        case .primary:
            return .backgroundButton
        case .secondary:
            return .backgroundSecondary
        }
    }
    
    private var foregroundColor: Color {
        switch type {
        case .primary:
            return .foregroundButton
        case .secondary:
            return .foregroundPrimary
        }
    }
}

#Preview {
    VStack {
        AppButton(label: "Continue", type: .primary) { print("Primary") }
        AppButton(label: "Cancel", type: .secondary) { print("Secondary") }
    }
    .padding()
}
