//
//  ThumbUp.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct ThumbUp: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.54659*width, y: 0.08533*height))
        path.addCurve(to: CGPoint(x: 0.50322*width, y: 0.10894*height), control1: CGPoint(x: 0.5284*width, y: 0.08092*height), control2: CGPoint(x: 0.51043*width, y: 0.09168*height))
        path.addCurve(to: CGPoint(x: 0.33333*width, y: 0.46958*height), control1: CGPoint(x: 0.45833*width, y: 0.27083*height), control2: CGPoint(x: 0.33333*width, y: 0.35646*height))
        path.addLine(to: CGPoint(x: 0.33333*width, y: 0.73855*height))
        path.addCurve(to: CGPoint(x: 0.40982*width, y: 0.85114*height), control1: CGPoint(x: 0.33333*width, y: 0.78632*height), control2: CGPoint(x: 0.36098*width, y: 0.83335*height))
        path.addCurve(to: CGPoint(x: 0.70665*width, y: 0.8897*height), control1: CGPoint(x: 0.52027*width, y: 0.89136*height), control2: CGPoint(x: 0.59306*width, y: 0.89954*height))
        path.addCurve(to: CGPoint(x: 0.87741*width, y: 0.73469*height), control1: CGPoint(x: 0.79377*width, y: 0.88215*height), control2: CGPoint(x: 0.85926*width, y: 0.81535*height))
        path.addLine(to: CGPoint(x: 0.9126*width, y: 0.57825*height))
        path.addCurve(to: CGPoint(x: 0.75*width, y: 0.375*height), control1: CGPoint(x: 0.93605*width, y: 0.47405*height), control2: CGPoint(x: 0.8568*width, y: 0.375*height))
        path.addLine(to: CGPoint(x: 0.625*width, y: 0.375*height))
        path.addCurve(to: CGPoint(x: 0.54659*width, y: 0.08533*height), control1: CGPoint(x: 0.64455*width, y: 0.25768*height), control2: CGPoint(x: 0.69229*width, y: 0.12066*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.08333*width, y: 0.45833*height))
        path.addCurve(to: CGPoint(x: 0.14583*width, y: 0.39583*height), control1: CGPoint(x: 0.08333*width, y: 0.42382*height), control2: CGPoint(x: 0.11132*width, y: 0.39583*height))
        path.addLine(to: CGPoint(x: 0.22917*width, y: 0.39583*height))
        path.addCurve(to: CGPoint(x: 0.29167*width, y: 0.45833*height), control1: CGPoint(x: 0.26368*width, y: 0.39583*height), control2: CGPoint(x: 0.29167*width, y: 0.42382*height))
        path.addLine(to: CGPoint(x: 0.29167*width, y: 0.79166*height))
        path.addCurve(to: CGPoint(x: 0.22917*width, y: 0.85416*height), control1: CGPoint(x: 0.29167*width, y: 0.82618*height), control2: CGPoint(x: 0.26368*width, y: 0.85416*height))
        path.addLine(to: CGPoint(x: 0.14583*width, y: 0.85416*height))
        path.addCurve(to: CGPoint(x: 0.08333*width, y: 0.79166*height), control1: CGPoint(x: 0.11132*width, y: 0.85416*height), control2: CGPoint(x: 0.08333*width, y: 0.82618*height))
        path.addLine(to: CGPoint(x: 0.08333*width, y: 0.45833*height))
        path.closeSubpath()
        return path
    }
}
