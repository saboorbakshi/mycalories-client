//
//  Cookie.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct Cookie: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.08333*width, y: 0.5*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.08333*height), control1: CGPoint(x: 0.08333*width, y: 0.26988*height), control2: CGPoint(x: 0.26988*width, y: 0.08333*height))
        path.addCurve(to: CGPoint(x: 0.54806*width, y: 0.08608*height), control1: CGPoint(x: 0.51624*width, y: 0.08333*height), control2: CGPoint(x: 0.53228*width, y: 0.08426*height))
        path.addCurve(to: CGPoint(x: 0.56975*width, y: 0.09872*height), control1: CGPoint(x: 0.55674*width, y: 0.08708*height), control2: CGPoint(x: 0.5646*width, y: 0.09166*height))
        path.addCurve(to: CGPoint(x: 0.57514*width, y: 0.12324*height), control1: CGPoint(x: 0.57489*width, y: 0.10578*height), control2: CGPoint(x: 0.57685*width, y: 0.11467*height))
        path.addCurve(to: CGPoint(x: 0.57292*width, y: 0.14583*height), control1: CGPoint(x: 0.57368*width, y: 0.13052*height), control2: CGPoint(x: 0.57292*width, y: 0.13807*height))
        path.addCurve(to: CGPoint(x: 0.67211*width, y: 0.2594*height), control1: CGPoint(x: 0.57292*width, y: 0.20389*height), control2: CGPoint(x: 0.61612*width, y: 0.2519*height))
        path.addCurve(to: CGPoint(x: 0.69894*width, y: 0.28622*height), control1: CGPoint(x: 0.68608*width, y: 0.26127*height), control2: CGPoint(x: 0.69707*width, y: 0.27225*height))
        path.addCurve(to: CGPoint(x: 0.8125*width, y: 0.38542*height), control1: CGPoint(x: 0.70643*width, y: 0.34222*height), control2: CGPoint(x: 0.75445*width, y: 0.38542*height))
        path.addCurve(to: CGPoint(x: 0.8602*width, y: 0.37506*height), control1: CGPoint(x: 0.82959*width, y: 0.38542*height), control2: CGPoint(x: 0.84572*width, y: 0.3817*height))
        path.addCurve(to: CGPoint(x: 0.88666*width, y: 0.37524*height), control1: CGPoint(x: 0.86861*width, y: 0.3712*height), control2: CGPoint(x: 0.8783*width, y: 0.37127*height))
        path.addCurve(to: CGPoint(x: 0.90348*width, y: 0.39566*height), control1: CGPoint(x: 0.89502*width, y: 0.37922*height), control2: CGPoint(x: 0.90117*width, y: 0.3867*height))
        path.addCurve(to: CGPoint(x: 0.91666*width, y: 0.5*height), control1: CGPoint(x: 0.91209*width, y: 0.42904*height), control2: CGPoint(x: 0.91666*width, y: 0.46401*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.91666*height), control1: CGPoint(x: 0.91666*width, y: 0.73012*height), control2: CGPoint(x: 0.73012*width, y: 0.91666*height))
        path.addCurve(to: CGPoint(x: 0.08333*width, y: 0.5*height), control1: CGPoint(x: 0.26988*width, y: 0.91666*height), control2: CGPoint(x: 0.08333*width, y: 0.73012*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.41667*width, y: 0.35417*height))
        path.addCurve(to: CGPoint(x: 0.35417*width, y: 0.41667*height), control1: CGPoint(x: 0.41667*width, y: 0.38868*height), control2: CGPoint(x: 0.38868*width, y: 0.41667*height))
        path.addCurve(to: CGPoint(x: 0.29167*width, y: 0.35417*height), control1: CGPoint(x: 0.31965*width, y: 0.41667*height), control2: CGPoint(x: 0.29167*width, y: 0.38868*height))
        path.addCurve(to: CGPoint(x: 0.35417*width, y: 0.29167*height), control1: CGPoint(x: 0.29167*width, y: 0.31965*height), control2: CGPoint(x: 0.31965*width, y: 0.29167*height))
        path.addCurve(to: CGPoint(x: 0.41667*width, y: 0.35417*height), control1: CGPoint(x: 0.38868*width, y: 0.29167*height), control2: CGPoint(x: 0.41667*width, y: 0.31965*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.58333*width, y: 0.47917*height))
        path.addCurve(to: CGPoint(x: 0.52083*width, y: 0.54167*height), control1: CGPoint(x: 0.58333*width, y: 0.51368*height), control2: CGPoint(x: 0.55535*width, y: 0.54167*height))
        path.addCurve(to: CGPoint(x: 0.45833*width, y: 0.47917*height), control1: CGPoint(x: 0.48632*width, y: 0.54167*height), control2: CGPoint(x: 0.45833*width, y: 0.51368*height))
        path.addCurve(to: CGPoint(x: 0.52083*width, y: 0.41667*height), control1: CGPoint(x: 0.45833*width, y: 0.44465*height), control2: CGPoint(x: 0.48632*width, y: 0.41667*height))
        path.addCurve(to: CGPoint(x: 0.58333*width, y: 0.47917*height), control1: CGPoint(x: 0.55535*width, y: 0.41667*height), control2: CGPoint(x: 0.58333*width, y: 0.44465*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.70833*width, y: 0.625*height))
        path.addCurve(to: CGPoint(x: 0.75*width, y: 0.58333*height), control1: CGPoint(x: 0.73135*width, y: 0.625*height), control2: CGPoint(x: 0.75*width, y: 0.60635*height))
        path.addCurve(to: CGPoint(x: 0.70833*width, y: 0.54167*height), control1: CGPoint(x: 0.75*width, y: 0.56032*height), control2: CGPoint(x: 0.73135*width, y: 0.54167*height))
        path.addCurve(to: CGPoint(x: 0.66667*width, y: 0.58333*height), control1: CGPoint(x: 0.68532*width, y: 0.54167*height), control2: CGPoint(x: 0.66667*width, y: 0.56032*height))
        path.addCurve(to: CGPoint(x: 0.70833*width, y: 0.625*height), control1: CGPoint(x: 0.66667*width, y: 0.60635*height), control2: CGPoint(x: 0.68532*width, y: 0.625*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.54167*width, y: 0.6875*height))
        path.addCurve(to: CGPoint(x: 0.47917*width, y: 0.75*height), control1: CGPoint(x: 0.54167*width, y: 0.72202*height), control2: CGPoint(x: 0.51368*width, y: 0.75*height))
        path.addCurve(to: CGPoint(x: 0.41667*width, y: 0.6875*height), control1: CGPoint(x: 0.44465*width, y: 0.75*height), control2: CGPoint(x: 0.41667*width, y: 0.72202*height))
        path.addCurve(to: CGPoint(x: 0.47917*width, y: 0.625*height), control1: CGPoint(x: 0.41667*width, y: 0.65298*height), control2: CGPoint(x: 0.44465*width, y: 0.625*height))
        path.addCurve(to: CGPoint(x: 0.54167*width, y: 0.6875*height), control1: CGPoint(x: 0.51368*width, y: 0.625*height), control2: CGPoint(x: 0.54167*width, y: 0.65298*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.29167*width, y: 0.625*height))
        path.addCurve(to: CGPoint(x: 0.33333*width, y: 0.58333*height), control1: CGPoint(x: 0.31468*width, y: 0.625*height), control2: CGPoint(x: 0.33333*width, y: 0.60635*height))
        path.addCurve(to: CGPoint(x: 0.29167*width, y: 0.54167*height), control1: CGPoint(x: 0.33333*width, y: 0.56032*height), control2: CGPoint(x: 0.31468*width, y: 0.54167*height))
        path.addCurve(to: CGPoint(x: 0.25*width, y: 0.58333*height), control1: CGPoint(x: 0.26865*width, y: 0.54167*height), control2: CGPoint(x: 0.25*width, y: 0.56032*height))
        path.addCurve(to: CGPoint(x: 0.29167*width, y: 0.625*height), control1: CGPoint(x: 0.25*width, y: 0.60635*height), control2: CGPoint(x: 0.26865*width, y: 0.625*height))
        path.closeSubpath()
        return path
    }
}
