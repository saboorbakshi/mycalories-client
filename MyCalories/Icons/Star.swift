//
//  CalendarClock.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct Star: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.5469*width, y: 0.07119*height))
        path.addCurve(to: CGPoint(x: 0.45303*width, y: 0.07119*height), control1: CGPoint(x: 0.52802*width, y: 0.03183*height), control2: CGPoint(x: 0.47191*width, y: 0.03183*height))
        path.addLine(to: CGPoint(x: 0.34846*width, y: 0.28917*height))
        path.addLine(to: CGPoint(x: 0.10776*width, y: 0.32073*height))
        path.addCurve(to: CGPoint(x: 0.07878*width, y: 0.41005*height), control1: CGPoint(x: 0.06443*width, y: 0.32641*height), control2: CGPoint(x: 0.04683*width, y: 0.37988*height))
        path.addLine(to: CGPoint(x: 0.25472*width, y: 0.57617*height))
        path.addLine(to: CGPoint(x: 0.21055*width, y: 0.81346*height))
        path.addCurve(to: CGPoint(x: 0.28647*width, y: 0.8687*height), control1: CGPoint(x: 0.20251*width, y: 0.85664*height), control2: CGPoint(x: 0.24816*width, y: 0.88937*height))
        path.addLine(to: CGPoint(x: 0.49997*width, y: 0.75344*height))
        path.addLine(to: CGPoint(x: 0.71347*width, y: 0.8687*height))
        path.addCurve(to: CGPoint(x: 0.78938*width, y: 0.81346*height), control1: CGPoint(x: 0.75177*width, y: 0.88937*height), control2: CGPoint(x: 0.79742*width, y: 0.85664*height))
        path.addLine(to: CGPoint(x: 0.74521*width, y: 0.57617*height))
        path.addLine(to: CGPoint(x: 0.92115*width, y: 0.41005*height))
        path.addCurve(to: CGPoint(x: 0.89217*width, y: 0.32073*height), control1: CGPoint(x: 0.9531*width, y: 0.37988*height), control2: CGPoint(x: 0.9355*width, y: 0.32641*height))
        path.addLine(to: CGPoint(x: 0.65147*width, y: 0.28917*height))
        path.addLine(to: CGPoint(x: 0.5469*width, y: 0.07119*height))
        path.closeSubpath()
        return path
    }
}
