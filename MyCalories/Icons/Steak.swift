//
//  CalendarClock.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct Steak: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.08546*width, y: 0.34386*height))
        path.addCurve(to: CGPoint(x: 0.3535*width, y: 0.147*height), control1: CGPoint(x: 0.13099*width, y: 0.2156*height), control2: CGPoint(x: 0.23856*width, y: 0.1339*height))
        path.addLine(to: CGPoint(x: 0.3551*width, y: 0.15341*height))
        path.addCurve(to: CGPoint(x: 0.38395*width, y: 0.51247*height), control1: CGPoint(x: 0.39667*width, y: 0.31968*height), control2: CGPoint(x: 0.40763*width, y: 0.42723*height))
        path.addCurve(to: CGPoint(x: 0.18995*width, y: 0.74556*height), control1: CGPoint(x: 0.36074*width, y: 0.59605*height), control2: CGPoint(x: 0.30252*width, y: 0.6637*height))
        path.addLine(to: CGPoint(x: 0.16697*width, y: 0.76228*height))
        path.addCurve(to: CGPoint(x: 0.07956*width, y: 0.59689*height), control1: CGPoint(x: 0.13046*width, y: 0.72213*height), control2: CGPoint(x: 0.10083*width, y: 0.66772*height))
        path.addCurve(to: CGPoint(x: 0.08546*width, y: 0.34386*height), control1: CGPoint(x: 0.05494*width, y: 0.51494*height), control2: CGPoint(x: 0.05702*width, y: 0.42397*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.27103*width, y: 0.83395*height))
        path.addCurve(to: CGPoint(x: 0.21512*width, y: 0.80454*height), control1: CGPoint(x: 0.25136*width, y: 0.82639*height), control2: CGPoint(x: 0.23269*width, y: 0.81664*height))
        path.addLine(to: CGPoint(x: 0.22671*width, y: 0.79611*height))
        path.addCurve(to: CGPoint(x: 0.4247*width, y: 0.58233*height), control1: CGPoint(x: 0.3226*width, y: 0.72637*height), control2: CGPoint(x: 0.38832*width, y: 0.66111*height))
        path.addCurve(to: CGPoint(x: 0.61079*width, y: 0.59412*height), control1: CGPoint(x: 0.49218*width, y: 0.5681*height), control2: CGPoint(x: 0.55294*width, y: 0.57098*height))
        path.addCurve(to: CGPoint(x: 0.78092*width, y: 0.72943*height), control1: CGPoint(x: 0.6671*width, y: 0.61665*height), control2: CGPoint(x: 0.7232*width, y: 0.65938*height))
        path.addCurve(to: CGPoint(x: 0.54153*width, y: 0.83087*height), control1: CGPoint(x: 0.70396*width, y: 0.77962*height), control2: CGPoint(x: 0.61251*width, y: 0.8114*height))
        path.addCurve(to: CGPoint(x: 0.27103*width, y: 0.83395*height), control1: CGPoint(x: 0.45012*width, y: 0.85595*height), control2: CGPoint(x: 0.35475*width, y: 0.86612*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.83105*width, y: 0.692*height))
        path.addCurve(to: CGPoint(x: 0.93407*width, y: 0.43434*height), control1: CGPoint(x: 0.90195*width, y: 0.63096*height), control2: CGPoint(x: 0.9513*width, y: 0.54659*height))
        path.addLine(to: CGPoint(x: 0.93383*width, y: 0.43275*height))
        path.addLine(to: CGPoint(x: 0.93343*width, y: 0.4312*height))
        path.addCurve(to: CGPoint(x: 0.87023*width, y: 0.29848*height), control1: CGPoint(x: 0.91745*width, y: 0.36984*height), control2: CGPoint(x: 0.89696*width, y: 0.32711*height))
        path.addCurve(to: CGPoint(x: 0.77832*width, y: 0.25243*height), control1: CGPoint(x: 0.84248*width, y: 0.26875*height), control2: CGPoint(x: 0.81058*width, y: 0.25693*height))
        path.addCurve(to: CGPoint(x: 0.71172*width, y: 0.24969*height), control1: CGPoint(x: 0.7573*width, y: 0.2495*height), control2: CGPoint(x: 0.73365*width, y: 0.2496*height))
        path.addCurve(to: CGPoint(x: 0.68644*width, y: 0.2496*height), control1: CGPoint(x: 0.70292*width, y: 0.24972*height), control2: CGPoint(x: 0.6944*width, y: 0.24976*height))
        path.addCurve(to: CGPoint(x: 0.59698*width, y: 0.23412*height), control1: CGPoint(x: 0.65651*width, y: 0.24898*height), control2: CGPoint(x: 0.62715*width, y: 0.24601*height))
        path.addLine(to: CGPoint(x: 0.42253*width, y: 0.16605*height))
        path.addCurve(to: CGPoint(x: 0.44782*width, y: 0.51495*height), control1: CGPoint(x: 0.45728*width, y: 0.31149*height), control2: CGPoint(x: 0.46976*width, y: 0.4215*height))
        path.addCurve(to: CGPoint(x: 0.634*width, y: 0.53609*height), control1: CGPoint(x: 0.51197*width, y: 0.50637*height), control2: CGPoint(x: 0.57378*width, y: 0.512*height))
        path.addCurve(to: CGPoint(x: 0.83105*width, y: 0.692*height), control1: CGPoint(x: 0.70341*width, y: 0.56385*height), control2: CGPoint(x: 0.76814*width, y: 0.6151*height))
        path.closeSubpath()
        return path
    }
}
