//
//  ThumbDown.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct ThumbDown: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.45348*width, y: 0.91467*height))
        path.addCurve(to: CGPoint(x: 0.49685*width, y: 0.89105*height), control1: CGPoint(x: 0.47167*width, y: 0.91908*height), control2: CGPoint(x: 0.48964*width, y: 0.90832*height))
        path.addCurve(to: CGPoint(x: 0.66674*width, y: 0.53042*height), control1: CGPoint(x: 0.54174*width, y: 0.72917*height), control2: CGPoint(x: 0.66674*width, y: 0.64354*height))
        path.addLine(to: CGPoint(x: 0.66674*width, y: 0.26145*height))
        path.addCurve(to: CGPoint(x: 0.59025*width, y: 0.14886*height), control1: CGPoint(x: 0.66674*width, y: 0.21368*height), control2: CGPoint(x: 0.63909*width, y: 0.16665*height))
        path.addCurve(to: CGPoint(x: 0.29342*width, y: 0.1103*height), control1: CGPoint(x: 0.4798*width, y: 0.10864*height), control2: CGPoint(x: 0.40701*width, y: 0.10046*height))
        path.addCurve(to: CGPoint(x: 0.12267*width, y: 0.26531*height), control1: CGPoint(x: 0.2063*width, y: 0.11785*height), control2: CGPoint(x: 0.14081*width, y: 0.18465*height))
        path.addLine(to: CGPoint(x: 0.08747*width, y: 0.42175*height))
        path.addCurve(to: CGPoint(x: 0.25007*width, y: 0.625*height), control1: CGPoint(x: 0.06402*width, y: 0.52595*height), control2: CGPoint(x: 0.14326*width, y: 0.625*height))
        path.addLine(to: CGPoint(x: 0.37507*width, y: 0.625*height))
        path.addCurve(to: CGPoint(x: 0.45348*width, y: 0.91467*height), control1: CGPoint(x: 0.35552*width, y: 0.74232*height), control2: CGPoint(x: 0.30778*width, y: 0.87934*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.91673*width, y: 0.54167*height))
        path.addCurve(to: CGPoint(x: 0.85423*width, y: 0.60417*height), control1: CGPoint(x: 0.91673*width, y: 0.57618*height), control2: CGPoint(x: 0.88876*width, y: 0.60417*height))
        path.addLine(to: CGPoint(x: 0.7709*width, y: 0.60417*height))
        path.addCurve(to: CGPoint(x: 0.7084*width, y: 0.54167*height), control1: CGPoint(x: 0.73638*width, y: 0.60417*height), control2: CGPoint(x: 0.7084*width, y: 0.57618*height))
        path.addLine(to: CGPoint(x: 0.7084*width, y: 0.20833*height))
        path.addCurve(to: CGPoint(x: 0.7709*width, y: 0.14583*height), control1: CGPoint(x: 0.7084*width, y: 0.17381*height), control2: CGPoint(x: 0.73638*width, y: 0.14583*height))
        path.addLine(to: CGPoint(x: 0.85423*width, y: 0.14583*height))
        path.addCurve(to: CGPoint(x: 0.91673*width, y: 0.20833*height), control1: CGPoint(x: 0.88876*width, y: 0.14583*height), control2: CGPoint(x: 0.91673*width, y: 0.17381*height))
        path.addLine(to: CGPoint(x: 0.91673*width, y: 0.54167*height))
        path.closeSubpath()
        return path
    }
}
