//
//  Female.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct Female: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.5*width, y: 0.04167*height))
        path.addCurve(to: CGPoint(x: 0.375*width, y: 0.16667*height), control1: CGPoint(x: 0.43096*width, y: 0.04167*height), control2: CGPoint(x: 0.375*width, y: 0.09763*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.29167*height), control1: CGPoint(x: 0.375*width, y: 0.2357*height), control2: CGPoint(x: 0.43096*width, y: 0.29167*height))
        path.addCurve(to: CGPoint(x: 0.625*width, y: 0.16667*height), control1: CGPoint(x: 0.56904*width, y: 0.29167*height), control2: CGPoint(x: 0.625*width, y: 0.2357*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.04167*height), control1: CGPoint(x: 0.625*width, y: 0.09763*height), control2: CGPoint(x: 0.56904*width, y: 0.04167*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.39715*width, y: 0.33333*height))
        path.addCurve(to: CGPoint(x: 0.32641*width, y: 0.38856*height), control1: CGPoint(x: 0.36369*width, y: 0.33333*height), control2: CGPoint(x: 0.33453*width, y: 0.3561*height))
        path.addLine(to: CGPoint(x: 0.23661*width, y: 0.74778*height))
        path.addCurve(to: CGPoint(x: 0.28714*width, y: 0.8125*height), control1: CGPoint(x: 0.22839*width, y: 0.78066*height), control2: CGPoint(x: 0.25325*width, y: 0.8125*height))
        path.addLine(to: CGPoint(x: 0.33337*width, y: 0.8125*height))
        path.addLine(to: CGPoint(x: 0.33337*width, y: 0.90625*height))
        path.addCurve(to: CGPoint(x: 0.38545*width, y: 0.95834*height), control1: CGPoint(x: 0.33337*width, y: 0.93502*height), control2: CGPoint(x: 0.35669*width, y: 0.95834*height))
        path.addLine(to: CGPoint(x: 0.61462*width, y: 0.95834*height))
        path.addCurve(to: CGPoint(x: 0.6667*width, y: 0.90625*height), control1: CGPoint(x: 0.64338*width, y: 0.95834*height), control2: CGPoint(x: 0.6667*width, y: 0.93502*height))
        path.addLine(to: CGPoint(x: 0.6667*width, y: 0.8125*height))
        path.addLine(to: CGPoint(x: 0.71294*width, y: 0.8125*height))
        path.addCurve(to: CGPoint(x: 0.76346*width, y: 0.74778*height), control1: CGPoint(x: 0.74682*width, y: 0.8125*height), control2: CGPoint(x: 0.77168*width, y: 0.78066*height))
        path.addLine(to: CGPoint(x: 0.67366*width, y: 0.38856*height))
        path.addCurve(to: CGPoint(x: 0.60292*width, y: 0.33333*height), control1: CGPoint(x: 0.66555*width, y: 0.3561*height), control2: CGPoint(x: 0.63638*width, y: 0.33333*height))
        path.addLine(to: CGPoint(x: 0.39715*width, y: 0.33333*height))
        path.closeSubpath()
        return path
    }
}
