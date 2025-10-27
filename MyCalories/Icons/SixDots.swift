//
//  SixDots.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct SixDots: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.21875*width, y: 0.15625*height))
        path.addCurve(to: CGPoint(x: 0.32813*width, y: 0.04688*height), control1: CGPoint(x: 0.21875*width, y: 0.09584*height), control2: CGPoint(x: 0.26772*width, y: 0.04688*height))
        path.addCurve(to: CGPoint(x: 0.4375*width, y: 0.15625*height), control1: CGPoint(x: 0.38853*width, y: 0.04688*height), control2: CGPoint(x: 0.4375*width, y: 0.09584*height))
        path.addCurve(to: CGPoint(x: 0.32813*width, y: 0.26563*height), control1: CGPoint(x: 0.4375*width, y: 0.21666*height), control2: CGPoint(x: 0.38853*width, y: 0.26563*height))
        path.addCurve(to: CGPoint(x: 0.21875*width, y: 0.15625*height), control1: CGPoint(x: 0.26772*width, y: 0.26563*height), control2: CGPoint(x: 0.21875*width, y: 0.21666*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.5625*width, y: 0.15625*height))
        path.addCurve(to: CGPoint(x: 0.67188*width, y: 0.04688*height), control1: CGPoint(x: 0.5625*width, y: 0.09584*height), control2: CGPoint(x: 0.61147*width, y: 0.04688*height))
        path.addCurve(to: CGPoint(x: 0.78125*width, y: 0.15625*height), control1: CGPoint(x: 0.73228*width, y: 0.04688*height), control2: CGPoint(x: 0.78125*width, y: 0.09584*height))
        path.addCurve(to: CGPoint(x: 0.67188*width, y: 0.26563*height), control1: CGPoint(x: 0.78125*width, y: 0.21666*height), control2: CGPoint(x: 0.73228*width, y: 0.26563*height))
        path.addCurve(to: CGPoint(x: 0.5625*width, y: 0.15625*height), control1: CGPoint(x: 0.61147*width, y: 0.26563*height), control2: CGPoint(x: 0.5625*width, y: 0.21666*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.21875*width, y: 0.84375*height))
        path.addCurve(to: CGPoint(x: 0.32813*width, y: 0.73438*height), control1: CGPoint(x: 0.21875*width, y: 0.78334*height), control2: CGPoint(x: 0.26772*width, y: 0.73438*height))
        path.addCurve(to: CGPoint(x: 0.4375*width, y: 0.84375*height), control1: CGPoint(x: 0.38853*width, y: 0.73438*height), control2: CGPoint(x: 0.4375*width, y: 0.78334*height))
        path.addCurve(to: CGPoint(x: 0.32813*width, y: 0.95313*height), control1: CGPoint(x: 0.4375*width, y: 0.90416*height), control2: CGPoint(x: 0.38853*width, y: 0.95313*height))
        path.addCurve(to: CGPoint(x: 0.21875*width, y: 0.84375*height), control1: CGPoint(x: 0.26772*width, y: 0.95313*height), control2: CGPoint(x: 0.21875*width, y: 0.90416*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.5625*width, y: 0.84375*height))
        path.addCurve(to: CGPoint(x: 0.67188*width, y: 0.73438*height), control1: CGPoint(x: 0.5625*width, y: 0.78334*height), control2: CGPoint(x: 0.61147*width, y: 0.73438*height))
        path.addCurve(to: CGPoint(x: 0.78125*width, y: 0.84375*height), control1: CGPoint(x: 0.73228*width, y: 0.73438*height), control2: CGPoint(x: 0.78125*width, y: 0.78334*height))
        path.addCurve(to: CGPoint(x: 0.67188*width, y: 0.95313*height), control1: CGPoint(x: 0.78125*width, y: 0.90416*height), control2: CGPoint(x: 0.73228*width, y: 0.95313*height))
        path.addCurve(to: CGPoint(x: 0.5625*width, y: 0.84375*height), control1: CGPoint(x: 0.61147*width, y: 0.95313*height), control2: CGPoint(x: 0.5625*width, y: 0.90416*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.21875*width, y: 0.49696*height))
        path.addCurve(to: CGPoint(x: 0.32813*width, y: 0.39063*height), control1: CGPoint(x: 0.21875*width, y: 0.43823*height), control2: CGPoint(x: 0.26772*width, y: 0.39063*height))
        path.addCurve(to: CGPoint(x: 0.4375*width, y: 0.49696*height), control1: CGPoint(x: 0.38853*width, y: 0.39063*height), control2: CGPoint(x: 0.4375*width, y: 0.43823*height))
        path.addLine(to: CGPoint(x: 0.4375*width, y: 0.50304*height))
        path.addCurve(to: CGPoint(x: 0.32813*width, y: 0.60938*height), control1: CGPoint(x: 0.4375*width, y: 0.56177*height), control2: CGPoint(x: 0.38853*width, y: 0.60938*height))
        path.addCurve(to: CGPoint(x: 0.21875*width, y: 0.50304*height), control1: CGPoint(x: 0.26772*width, y: 0.60938*height), control2: CGPoint(x: 0.21875*width, y: 0.56177*height))
        path.addLine(to: CGPoint(x: 0.21875*width, y: 0.49696*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.5625*width, y: 0.49696*height))
        path.addCurve(to: CGPoint(x: 0.67188*width, y: 0.39063*height), control1: CGPoint(x: 0.5625*width, y: 0.43823*height), control2: CGPoint(x: 0.61147*width, y: 0.39063*height))
        path.addCurve(to: CGPoint(x: 0.78125*width, y: 0.49696*height), control1: CGPoint(x: 0.73228*width, y: 0.39063*height), control2: CGPoint(x: 0.78125*width, y: 0.43823*height))
        path.addLine(to: CGPoint(x: 0.78125*width, y: 0.50304*height))
        path.addCurve(to: CGPoint(x: 0.67188*width, y: 0.60938*height), control1: CGPoint(x: 0.78125*width, y: 0.56177*height), control2: CGPoint(x: 0.73228*width, y: 0.60938*height))
        path.addCurve(to: CGPoint(x: 0.5625*width, y: 0.50304*height), control1: CGPoint(x: 0.61147*width, y: 0.60938*height), control2: CGPoint(x: 0.5625*width, y: 0.56177*height))
        path.addLine(to: CGPoint(x: 0.5625*width, y: 0.49696*height))
        path.closeSubpath()
        return path
    }
}
