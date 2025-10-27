//
//  BlurBackground.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import SwiftUI

struct BlurBackground: ViewModifier {
    let position: Position
    
    func body(content: Content) -> some View {
        content.background(
            Rectangle()
                .fill(.ultraThinMaterial)
                .mask(
                    LinearGradient(
                        colors: [
                            .clear,
                            .white.opacity(0.9),
                            .white
                        ],
                        startPoint: position == .top ? .bottom : .top,
                        endPoint: position == .top ? .top : .bottom
                    )
                )
                .ignoresSafeArea(edges: position == .top ? .top : .bottom)
        )
    }
}

extension View {
    func backgroundBlur(_ position: Position = .bottom) -> some View {
        self.modifier(BlurBackground(position: position))
    }
}
