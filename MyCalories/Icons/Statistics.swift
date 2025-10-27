//
//  Statistics.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct Statistics: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.39063*width, y: 0.23604*height))
        path.addCurve(to: CGPoint(x: 0.50167*width, y: 0.125*height), control1: CGPoint(x: 0.39063*width, y: 0.17471*height), control2: CGPoint(x: 0.44034*width, y: 0.125*height))
        path.addCurve(to: CGPoint(x: 0.61271*width, y: 0.23604*height), control1: CGPoint(x: 0.563*width, y: 0.125*height), control2: CGPoint(x: 0.61271*width, y: 0.17471*height))
        path.addLine(to: CGPoint(x: 0.61271*width, y: 0.76396*height))
        path.addCurve(to: CGPoint(x: 0.50167*width, y: 0.875*height), control1: CGPoint(x: 0.61271*width, y: 0.82528*height), control2: CGPoint(x: 0.563*width, y: 0.875*height))
        path.addCurve(to: CGPoint(x: 0.39063*width, y: 0.76396*height), control1: CGPoint(x: 0.44034*width, y: 0.875*height), control2: CGPoint(x: 0.39063*width, y: 0.82528*height))
        path.addLine(to: CGPoint(x: 0.39063*width, y: 0.23604*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.76729*width, y: 0.34375*height))
        path.addCurve(to: CGPoint(x: 0.65625*width, y: 0.45479*height), control1: CGPoint(x: 0.70596*width, y: 0.34375*height), control2: CGPoint(x: 0.65625*width, y: 0.39347*height))
        path.addLine(to: CGPoint(x: 0.65625*width, y: 0.76048*height))
        path.addCurve(to: CGPoint(x: 0.76729*width, y: 0.87153*height), control1: CGPoint(x: 0.65625*width, y: 0.82181*height), control2: CGPoint(x: 0.70596*width, y: 0.87153*height))
        path.addCurve(to: CGPoint(x: 0.87834*width, y: 0.76048*height), control1: CGPoint(x: 0.82862*width, y: 0.87153*height), control2: CGPoint(x: 0.87834*width, y: 0.82181*height))
        path.addLine(to: CGPoint(x: 0.87834*width, y: 0.45479*height))
        path.addCurve(to: CGPoint(x: 0.76729*width, y: 0.34375*height), control1: CGPoint(x: 0.87834*width, y: 0.39347*height), control2: CGPoint(x: 0.82862*width, y: 0.34375*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.23604*width, y: 0.53239*height))
        path.addCurve(to: CGPoint(x: 0.125*width, y: 0.64343*height), control1: CGPoint(x: 0.17471*width, y: 0.53239*height), control2: CGPoint(x: 0.125*width, y: 0.5821*height))
        path.addLine(to: CGPoint(x: 0.125*width, y: 0.76394*height))
        path.addCurve(to: CGPoint(x: 0.23604*width, y: 0.87498*height), control1: CGPoint(x: 0.125*width, y: 0.82527*height), control2: CGPoint(x: 0.17471*width, y: 0.87498*height))
        path.addCurve(to: CGPoint(x: 0.34708*width, y: 0.76394*height), control1: CGPoint(x: 0.29737*width, y: 0.87498*height), control2: CGPoint(x: 0.34708*width, y: 0.82527*height))
        path.addLine(to: CGPoint(x: 0.34708*width, y: 0.64343*height))
        path.addCurve(to: CGPoint(x: 0.23604*width, y: 0.53239*height), control1: CGPoint(x: 0.34708*width, y: 0.5821*height), control2: CGPoint(x: 0.29737*width, y: 0.53239*height))
        path.closeSubpath()
        return path
    }
}
