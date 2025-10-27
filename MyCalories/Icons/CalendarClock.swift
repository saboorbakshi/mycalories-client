//
//  CalendarClock.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct CalendarClock: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.10926*width, y: 0.2127*height))
        path.addCurve(to: CGPoint(x: 0.05011*width, y: 0.29717*height), control1: CGPoint(x: 0.0696*width, y: 0.21969*height), control2: CGPoint(x: 0.04312*width, y: 0.25751*height))
        path.addLine(to: CGPoint(x: 0.0676*width, y: 0.39633*height))
        path.addLine(to: CGPoint(x: 0.41389*width, y: 0.33527*height))
        path.addCurve(to: CGPoint(x: 0.66668*width, y: 0.22916*height), control1: CGPoint(x: 0.47816*width, y: 0.26979*height), control2: CGPoint(x: 0.56768*width, y: 0.22916*height))
        path.addCurve(to: CGPoint(x: 0.67277*width, y: 0.22922*height), control1: CGPoint(x: 0.66872*width, y: 0.22916*height), control2: CGPoint(x: 0.67075*width, y: 0.22918*height))
        path.addLine(to: CGPoint(x: 0.66562*width, y: 0.18864*height))
        path.addCurve(to: CGPoint(x: 0.58115*width, y: 0.12949*height), control1: CGPoint(x: 0.65862*width, y: 0.14898*height), control2: CGPoint(x: 0.6208*width, y: 0.1225*height))
        path.addLine(to: CGPoint(x: 0.10926*width, y: 0.2127*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.35861*width, y: 0.40848*height))
        path.addCurve(to: CGPoint(x: 0.31251*width, y: 0.58333*height), control1: CGPoint(x: 0.32927*width, y: 0.46007*height), control2: CGPoint(x: 0.31251*width, y: 0.51974*height))
        path.addCurve(to: CGPoint(x: 0.36012*width, y: 0.7608*height), control1: CGPoint(x: 0.31251*width, y: 0.648*height), control2: CGPoint(x: 0.32985*width, y: 0.70862*height))
        path.addLine(to: CGPoint(x: 0.21055*width, y: 0.78717*height))
        path.addCurve(to: CGPoint(x: 0.12608*width, y: 0.72802*height), control1: CGPoint(x: 0.17089*width, y: 0.79416*height), control2: CGPoint(x: 0.13307*width, y: 0.76768*height))
        path.addLine(to: CGPoint(x: 0.07845*width, y: 0.45788*height))
        path.addLine(to: CGPoint(x: 0.35861*width, y: 0.40848*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.37501*width, y: 0.58333*height))
        path.addCurve(to: CGPoint(x: 0.66668*width, y: 0.29166*height), control1: CGPoint(x: 0.37501*width, y: 0.42225*height), control2: CGPoint(x: 0.5056*width, y: 0.29166*height))
        path.addCurve(to: CGPoint(x: 0.95834*width, y: 0.58333*height), control1: CGPoint(x: 0.82777*width, y: 0.29166*height), control2: CGPoint(x: 0.95834*width, y: 0.42225*height))
        path.addCurve(to: CGPoint(x: 0.66668*width, y: 0.875*height), control1: CGPoint(x: 0.95834*width, y: 0.74442*height), control2: CGPoint(x: 0.82777*width, y: 0.875*height))
        path.addCurve(to: CGPoint(x: 0.37501*width, y: 0.58333*height), control1: CGPoint(x: 0.5056*width, y: 0.875*height), control2: CGPoint(x: 0.37501*width, y: 0.74442*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.66668*width, y: 0.45833*height))
        path.addCurve(to: CGPoint(x: 0.69793*width, y: 0.48958*height), control1: CGPoint(x: 0.68394*width, y: 0.45833*height), control2: CGPoint(x: 0.69793*width, y: 0.47232*height))
        path.addLine(to: CGPoint(x: 0.69793*width, y: 0.57039*height))
        path.addLine(to: CGPoint(x: 0.77211*width, y: 0.64457*height))
        path.addCurve(to: CGPoint(x: 0.77211*width, y: 0.68876*height), control1: CGPoint(x: 0.78432*width, y: 0.65677*height), control2: CGPoint(x: 0.78432*width, y: 0.67656*height))
        path.addCurve(to: CGPoint(x: 0.72792*width, y: 0.68876*height), control1: CGPoint(x: 0.75991*width, y: 0.70097*height), control2: CGPoint(x: 0.74012*width, y: 0.70097*height))
        path.addLine(to: CGPoint(x: 0.64458*width, y: 0.60543*height))
        path.addCurve(to: CGPoint(x: 0.63543*width, y: 0.58333*height), control1: CGPoint(x: 0.63872*width, y: 0.59957*height), control2: CGPoint(x: 0.63543*width, y: 0.59162*height))
        path.addLine(to: CGPoint(x: 0.63543*width, y: 0.48958*height))
        path.addCurve(to: CGPoint(x: 0.66668*width, y: 0.45833*height), control1: CGPoint(x: 0.63543*width, y: 0.47232*height), control2: CGPoint(x: 0.64942*width, y: 0.45833*height))
        path.closeSubpath()
        return path
    }
}
