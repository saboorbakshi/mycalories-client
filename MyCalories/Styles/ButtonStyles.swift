//
//  ButtonStyles.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import SwiftUI

struct ScaleButtonStyle: ButtonStyle {
    var scaleAmount: CGFloat = 0.97
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? scaleAmount : 1.0)
            .animation(.easeOut(duration: 0.1), value: configuration.isPressed)
    }
}
