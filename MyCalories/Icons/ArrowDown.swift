//
//  ArrowDown.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct ArrowDown: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.77641*width, y: 0.5465*height))
        path.addCurve(to: CGPoint(x: 0.77641*width, y: 0.62016*height), control1: CGPoint(x: 0.79675*width, y: 0.56684*height), control2: CGPoint(x: 0.79675*width, y: 0.59982*height))
        path.addLine(to: CGPoint(x: 0.53683*width, y: 0.85974*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.875*height), control1: CGPoint(x: 0.52706*width, y: 0.86951*height), control2: CGPoint(x: 0.51381*width, y: 0.875*height))
        path.addCurve(to: CGPoint(x: 0.46317*width, y: 0.85974*height), control1: CGPoint(x: 0.48619*width, y: 0.875*height), control2: CGPoint(x: 0.47294*width, y: 0.86951*height))
        path.addLine(to: CGPoint(x: 0.22359*width, y: 0.62016*height))
        path.addCurve(to: CGPoint(x: 0.22359*width, y: 0.5465*height), control1: CGPoint(x: 0.20325*width, y: 0.59982*height), control2: CGPoint(x: 0.20325*width, y: 0.56684*height))
        path.addCurve(to: CGPoint(x: 0.29725*width, y: 0.5465*height), control1: CGPoint(x: 0.24393*width, y: 0.52617*height), control2: CGPoint(x: 0.2769*width, y: 0.52617*height))
        path.addLine(to: CGPoint(x: 0.44792*width, y: 0.69717*height))
        path.addLine(to: CGPoint(x: 0.44792*width, y: 0.17708*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.125*height), control1: CGPoint(x: 0.44792*width, y: 0.14832*height), control2: CGPoint(x: 0.47124*width, y: 0.125*height))
        path.addCurve(to: CGPoint(x: 0.55208*width, y: 0.17708*height), control1: CGPoint(x: 0.52877*width, y: 0.125*height), control2: CGPoint(x: 0.55208*width, y: 0.14832*height))
        path.addLine(to: CGPoint(x: 0.55208*width, y: 0.69717*height))
        path.addLine(to: CGPoint(x: 0.70275*width, y: 0.5465*height))
        path.addCurve(to: CGPoint(x: 0.77641*width, y: 0.5465*height), control1: CGPoint(x: 0.72309*width, y: 0.52617*height), control2: CGPoint(x: 0.75607*width, y: 0.52617*height))
        path.closeSubpath()
        return path
    }
}
