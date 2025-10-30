//
//  ToolbarButton.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-30.
//

import SwiftUI

struct ToolbarButton: View {
    
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .font(Font.icon)
                .padding(.horizontal, Constants.Padding.iconButtonTextInset)
                .frame(height: Constants.Size.iconButton)
                .foregroundColor(.foregroundSecondary)
                .background(.backgroundSecondary)
                .cornerRadius(Constants.Radius.full)
        }
    }
}

#Preview {
    HStack {
        ToolbarButton(label: "Back") {}
        ToolbarButton(label: "Cancel") {}
    }
}
