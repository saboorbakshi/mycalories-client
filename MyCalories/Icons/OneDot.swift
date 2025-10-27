//
//  OneDot.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct OneDot: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.5026*width, y: 0.39063*height))
        path.addCurve(to: CGPoint(x: 0.39323*width, y: 0.5*height), control1: CGPoint(x: 0.4422*width, y: 0.39063*height), control2: CGPoint(x: 0.39323*width, y: 0.43959*height))
        path.addCurve(to: CGPoint(x: 0.5026*width, y: 0.60938*height), control1: CGPoint(x: 0.39323*width, y: 0.56041*height), control2: CGPoint(x: 0.4422*width, y: 0.60938*height))
        path.addCurve(to: CGPoint(x: 0.61198*width, y: 0.5*height), control1: CGPoint(x: 0.56301*width, y: 0.60938*height), control2: CGPoint(x: 0.61198*width, y: 0.56041*height))
        path.addCurve(to: CGPoint(x: 0.5026*width, y: 0.39063*height), control1: CGPoint(x: 0.61198*width, y: 0.43959*height), control2: CGPoint(x: 0.56301*width, y: 0.39063*height))
        path.closeSubpath()
        return path
    }
}
