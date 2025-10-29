//
//  CalendarClock.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct Flash: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.5833*width, y: 0.09815*height))
        path.addCurve(to: CGPoint(x: 0.48834*width, y: 0.06858*height), control1: CGPoint(x: 0.5833*width, y: 0.04704*height), control2: CGPoint(x: 0.51735*width, y: 0.02651*height))
        path.addLine(to: CGPoint(x: 0.13218*width, y: 0.58501*height))
        path.addCurve(to: CGPoint(x: 0.17506*width, y: 0.66666*height), control1: CGPoint(x: 0.10835*width, y: 0.61956*height), control2: CGPoint(x: 0.13309*width, y: 0.66666*height))
        path.addLine(to: CGPoint(x: 0.41663*width, y: 0.66666*height))
        path.addLine(to: CGPoint(x: 0.41663*width, y: 0.90184*height))
        path.addCurve(to: CGPoint(x: 0.51159*width, y: 0.93141*height), control1: CGPoint(x: 0.41663*width, y: 0.95295*height), control2: CGPoint(x: 0.48257*width, y: 0.97349*height))
        path.addLine(to: CGPoint(x: 0.86775*width, y: 0.41498*height))
        path.addCurve(to: CGPoint(x: 0.82488*width, y: 0.33333*height), control1: CGPoint(x: 0.89158*width, y: 0.38043*height), control2: CGPoint(x: 0.86685*width, y: 0.33333*height))
        path.addLine(to: CGPoint(x: 0.5833*width, y: 0.33333*height))
        path.addLine(to: CGPoint(x: 0.5833*width, y: 0.09815*height))
        path.closeSubpath()
        return path
    }
}
