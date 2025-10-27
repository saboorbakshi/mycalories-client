//
//  ArrowRight.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct ArrowRight: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.5465*width, y: 0.22359*height))
        path.addCurve(to: CGPoint(x: 0.62016*width, y: 0.22359*height), control1: CGPoint(x: 0.56685*width, y: 0.20325*height), control2: CGPoint(x: 0.59982*width, y: 0.20325*height))
        path.addLine(to: CGPoint(x: 0.85974*width, y: 0.46317*height))
        path.addCurve(to: CGPoint(x: 0.875*width, y: 0.5*height), control1: CGPoint(x: 0.86952*width, y: 0.47294*height), control2: CGPoint(x: 0.875*width, y: 0.48619*height))
        path.addCurve(to: CGPoint(x: 0.85974*width, y: 0.53683*height), control1: CGPoint(x: 0.875*width, y: 0.51381*height), control2: CGPoint(x: 0.86952*width, y: 0.52706*height))
        path.addLine(to: CGPoint(x: 0.62016*width, y: 0.77641*height))
        path.addCurve(to: CGPoint(x: 0.5465*width, y: 0.77641*height), control1: CGPoint(x: 0.59982*width, y: 0.79675*height), control2: CGPoint(x: 0.56685*width, y: 0.79675*height))
        path.addCurve(to: CGPoint(x: 0.5465*width, y: 0.70275*height), control1: CGPoint(x: 0.52617*width, y: 0.75607*height), control2: CGPoint(x: 0.52617*width, y: 0.7231*height))
        path.addLine(to: CGPoint(x: 0.69717*width, y: 0.55208*height))
        path.addLine(to: CGPoint(x: 0.17708*width, y: 0.55208*height))
        path.addCurve(to: CGPoint(x: 0.125*width, y: 0.5*height), control1: CGPoint(x: 0.14832*width, y: 0.55208*height), control2: CGPoint(x: 0.125*width, y: 0.52876*height))
        path.addCurve(to: CGPoint(x: 0.17708*width, y: 0.44792*height), control1: CGPoint(x: 0.125*width, y: 0.47123*height), control2: CGPoint(x: 0.14832*width, y: 0.44792*height))
        path.addLine(to: CGPoint(x: 0.69717*width, y: 0.44792*height))
        path.addLine(to: CGPoint(x: 0.5465*width, y: 0.29724*height))
        path.addCurve(to: CGPoint(x: 0.5465*width, y: 0.22359*height), control1: CGPoint(x: 0.52617*width, y: 0.27691*height), control2: CGPoint(x: 0.52617*width, y: 0.24393*height))
        path.closeSubpath()
        return path
    }
}
