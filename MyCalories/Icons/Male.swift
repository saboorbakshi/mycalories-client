//
//  Male.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct Male: Shape {
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
        path.move(to: CGPoint(x: 0.32292*width, y: 0.33333*height))
        path.addCurve(to: CGPoint(x: 0.25*width, y: 0.40625*height), control1: CGPoint(x: 0.28265*width, y: 0.33333*height), control2: CGPoint(x: 0.25*width, y: 0.36598*height))
        path.addLine(to: CGPoint(x: 0.25*width, y: 0.63542*height))
        path.addCurve(to: CGPoint(x: 0.32292*width, y: 0.70833*height), control1: CGPoint(x: 0.25*width, y: 0.67569*height), control2: CGPoint(x: 0.28265*width, y: 0.70833*height))
        path.addLine(to: CGPoint(x: 0.33333*width, y: 0.70833*height))
        path.addLine(to: CGPoint(x: 0.33333*width, y: 0.90625*height))
        path.addCurve(to: CGPoint(x: 0.38542*width, y: 0.95834*height), control1: CGPoint(x: 0.33333*width, y: 0.93502*height), control2: CGPoint(x: 0.35665*width, y: 0.95834*height))
        path.addLine(to: CGPoint(x: 0.61458*width, y: 0.95834*height))
        path.addCurve(to: CGPoint(x: 0.66667*width, y: 0.90625*height), control1: CGPoint(x: 0.64335*width, y: 0.95834*height), control2: CGPoint(x: 0.66667*width, y: 0.93502*height))
        path.addLine(to: CGPoint(x: 0.66667*width, y: 0.70833*height))
        path.addLine(to: CGPoint(x: 0.67708*width, y: 0.70833*height))
        path.addCurve(to: CGPoint(x: 0.75*width, y: 0.63542*height), control1: CGPoint(x: 0.71735*width, y: 0.70833*height), control2: CGPoint(x: 0.75*width, y: 0.67569*height))
        path.addLine(to: CGPoint(x: 0.75*width, y: 0.40625*height))
        path.addCurve(to: CGPoint(x: 0.67708*width, y: 0.33333*height), control1: CGPoint(x: 0.75*width, y: 0.36598*height), control2: CGPoint(x: 0.71735*width, y: 0.33333*height))
        path.addLine(to: CGPoint(x: 0.32292*width, y: 0.33333*height))
        path.closeSubpath()
        return path
    }
}
