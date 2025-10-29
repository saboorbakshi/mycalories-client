//
//  HorizontalFade.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-29.
//

import Foundation
import SwiftUI

struct HorizontalFade: ViewModifier {
    func body(content: Content) -> some View {
        content.mask(
            LinearGradient(
                stops: [
                    .init(color: .clear, location: 0.0),
                    .init(color: .black, location: 0.1),
                    .init(color: .black, location: 0.9),
                    .init(color: .clear, location: 1.0)
                ],
                startPoint: .leading,
                endPoint: .trailing
            )
        )
    }
}

extension View {
    func horizontalFade() -> some View {
        self.modifier(HorizontalFade())
    }
}
