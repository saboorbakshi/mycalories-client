//
//  CalendarClock.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct Bread: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.5*width, y: 0.125*height))
        path.addCurve(to: CGPoint(x: 0.21204*width, y: 0.19314*height), control1: CGPoint(x: 0.38917*width, y: 0.125*height), control2: CGPoint(x: 0.2873*width, y: 0.15043*height))
        path.addCurve(to: CGPoint(x: 0.08333*width, y: 0.375*height), control1: CGPoint(x: 0.13771*width, y: 0.23533*height), control2: CGPoint(x: 0.08333*width, y: 0.29843*height))
        path.addCurve(to: CGPoint(x: 0.16667*width, y: 0.52643*height), control1: CGPoint(x: 0.08333*width, y: 0.43493*height), control2: CGPoint(x: 0.11686*width, y: 0.48679*height))
        path.addLine(to: CGPoint(x: 0.16667*width, y: 0.80208*height))
        path.addCurve(to: CGPoint(x: 0.23958*width, y: 0.875*height), control1: CGPoint(x: 0.16667*width, y: 0.84235*height), control2: CGPoint(x: 0.19931*width, y: 0.875*height))
        path.addLine(to: CGPoint(x: 0.76042*width, y: 0.875*height))
        path.addCurve(to: CGPoint(x: 0.83333*width, y: 0.80208*height), control1: CGPoint(x: 0.80069*width, y: 0.875*height), control2: CGPoint(x: 0.83333*width, y: 0.84235*height))
        path.addLine(to: CGPoint(x: 0.83333*width, y: 0.52643*height))
        path.addCurve(to: CGPoint(x: 0.91667*width, y: 0.375*height), control1: CGPoint(x: 0.88314*width, y: 0.48679*height), control2: CGPoint(x: 0.91667*width, y: 0.43493*height))
        path.addCurve(to: CGPoint(x: 0.78795*width, y: 0.19314*height), control1: CGPoint(x: 0.91667*width, y: 0.29843*height), control2: CGPoint(x: 0.86229*width, y: 0.23533*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.125*height), control1: CGPoint(x: 0.7127*width, y: 0.15043*height), control2: CGPoint(x: 0.61083*width, y: 0.125*height))
        path.closeSubpath()
        return path
    }
}
