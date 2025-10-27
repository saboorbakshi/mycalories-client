//
//  ArrowUp.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct ArrowUp: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.22359*width, y: 0.45349*height))
        path.addCurve(to: CGPoint(x: 0.22359*width, y: 0.37984*height), control1: CGPoint(x: 0.20325*width, y: 0.43315*height), control2: CGPoint(x: 0.20325*width, y: 0.40018*height))
        path.addLine(to: CGPoint(x: 0.46317*width, y: 0.14025*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.125*height), control1: CGPoint(x: 0.47294*width, y: 0.13049*height), control2: CGPoint(x: 0.48619*width, y: 0.125*height))
        path.addCurve(to: CGPoint(x: 0.53683*width, y: 0.14025*height), control1: CGPoint(x: 0.51381*width, y: 0.125*height), control2: CGPoint(x: 0.52706*width, y: 0.13049*height))
        path.addLine(to: CGPoint(x: 0.77641*width, y: 0.37984*height))
        path.addCurve(to: CGPoint(x: 0.77641*width, y: 0.45349*height), control1: CGPoint(x: 0.79675*width, y: 0.40018*height), control2: CGPoint(x: 0.79675*width, y: 0.43315*height))
        path.addCurve(to: CGPoint(x: 0.70275*width, y: 0.45349*height), control1: CGPoint(x: 0.75607*width, y: 0.47383*height), control2: CGPoint(x: 0.7231*width, y: 0.47383*height))
        path.addLine(to: CGPoint(x: 0.55208*width, y: 0.30282*height))
        path.addLine(to: CGPoint(x: 0.55208*width, y: 0.82291*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.55208*width, y: 0.85168*height), control2: CGPoint(x: 0.52876*width, y: 0.875*height))
        path.addCurve(to: CGPoint(x: 0.44792*width, y: 0.82291*height), control1: CGPoint(x: 0.47123*width, y: 0.875*height), control2: CGPoint(x: 0.44792*width, y: 0.85168*height))
        path.addLine(to: CGPoint(x: 0.44792*width, y: 0.30282*height))
        path.addLine(to: CGPoint(x: 0.29725*width, y: 0.45349*height))
        path.addCurve(to: CGPoint(x: 0.22359*width, y: 0.45349*height), control1: CGPoint(x: 0.27691*width, y: 0.47383*height), control2: CGPoint(x: 0.24393*width, y: 0.47383*height))
        path.closeSubpath()
        return path
    }
}
