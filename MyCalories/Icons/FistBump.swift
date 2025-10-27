//
//  FistBump.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct FistBump: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.53128*width, y: 0.15625*height))
        path.addCurve(to: CGPoint(x: 0.50003*width, y: 0.125*height), control1: CGPoint(x: 0.53128*width, y: 0.13899*height), control2: CGPoint(x: 0.51729*width, y: 0.125*height))
        path.addCurve(to: CGPoint(x: 0.46878*width, y: 0.15625*height), control1: CGPoint(x: 0.48277*width, y: 0.125*height), control2: CGPoint(x: 0.46878*width, y: 0.13899*height))
        path.addLine(to: CGPoint(x: 0.46878*width, y: 0.26042*height))
        path.addCurve(to: CGPoint(x: 0.50003*width, y: 0.29167*height), control1: CGPoint(x: 0.46878*width, y: 0.27768*height), control2: CGPoint(x: 0.48277*width, y: 0.29167*height))
        path.addCurve(to: CGPoint(x: 0.53128*width, y: 0.26042*height), control1: CGPoint(x: 0.51729*width, y: 0.29167*height), control2: CGPoint(x: 0.53128*width, y: 0.27768*height))
        path.addLine(to: CGPoint(x: 0.53128*width, y: 0.15625*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.30275*width, y: 0.21658*height))
        path.addCurve(to: CGPoint(x: 0.25872*width, y: 0.21273*height), control1: CGPoint(x: 0.29165*width, y: 0.20336*height), control2: CGPoint(x: 0.27194*width, y: 0.20164*height))
        path.addCurve(to: CGPoint(x: 0.25487*width, y: 0.25676*height), control1: CGPoint(x: 0.2455*width, y: 0.22382*height), control2: CGPoint(x: 0.24378*width, y: 0.24354*height))
        path.addLine(to: CGPoint(x: 0.32183*width, y: 0.33655*height))
        path.addCurve(to: CGPoint(x: 0.36585*width, y: 0.34041*height), control1: CGPoint(x: 0.33292*width, y: 0.34978*height), control2: CGPoint(x: 0.35263*width, y: 0.3515*height))
        path.addCurve(to: CGPoint(x: 0.3697*width, y: 0.29638*height), control1: CGPoint(x: 0.37907*width, y: 0.32931*height), control2: CGPoint(x: 0.3808*width, y: 0.3096*height))
        path.addLine(to: CGPoint(x: 0.30275*width, y: 0.21658*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.74469*width, y: 0.25676*height))
        path.addCurve(to: CGPoint(x: 0.74084*width, y: 0.21274*height), control1: CGPoint(x: 0.75579*width, y: 0.24354*height), control2: CGPoint(x: 0.75406*width, y: 0.22383*height))
        path.addCurve(to: CGPoint(x: 0.69681*width, y: 0.21659*height), control1: CGPoint(x: 0.72762*width, y: 0.20164*height), control2: CGPoint(x: 0.70791*width, y: 0.20337*height))
        path.addLine(to: CGPoint(x: 0.62986*width, y: 0.29638*height))
        path.addCurve(to: CGPoint(x: 0.63371*width, y: 0.34041*height), control1: CGPoint(x: 0.61876*width, y: 0.3096*height), control2: CGPoint(x: 0.62049*width, y: 0.32932*height))
        path.addCurve(to: CGPoint(x: 0.67773*width, y: 0.33656*height), control1: CGPoint(x: 0.64693*width, y: 0.3515*height), control2: CGPoint(x: 0.66664*width, y: 0.34978*height))
        path.addLine(to: CGPoint(x: 0.74469*width, y: 0.25676*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.21753*width, y: 0.375*height))
        path.addCurve(to: CGPoint(x: 0.13268*width, y: 0.43157*height), control1: CGPoint(x: 0.18042*width, y: 0.375*height), control2: CGPoint(x: 0.14695*width, y: 0.39731*height))
        path.addLine(to: CGPoint(x: 0.11619*width, y: 0.47115*height))
        path.addCurve(to: CGPoint(x: 0.07292*width, y: 0.5*height), control1: CGPoint(x: 0.10891*width, y: 0.48862*height), control2: CGPoint(x: 0.09184*width, y: 0.5*height))
        path.addCurve(to: CGPoint(x: 0.04167*width, y: 0.53125*height), control1: CGPoint(x: 0.05566*width, y: 0.5*height), control2: CGPoint(x: 0.04167*width, y: 0.51399*height))
        path.addLine(to: CGPoint(x: 0.04167*width, y: 0.80209*height))
        path.addCurve(to: CGPoint(x: 0.07292*width, y: 0.83334*height), control1: CGPoint(x: 0.04167*width, y: 0.81934*height), control2: CGPoint(x: 0.05566*width, y: 0.83334*height))
        path.addLine(to: CGPoint(x: 0.30789*width, y: 0.83334*height))
        path.addCurve(to: CGPoint(x: 0.46932*width, y: 0.68633*height), control1: CGPoint(x: 0.39157*width, y: 0.83334*height), control2: CGPoint(x: 0.46151*width, y: 0.76965*height))
        path.addLine(to: CGPoint(x: 0.47606*width, y: 0.61442*height))
        path.addCurve(to: CGPoint(x: 0.31496*width, y: 0.4375*height), control1: CGPoint(x: 0.48496*width, y: 0.5195*height), control2: CGPoint(x: 0.41029*width, y: 0.4375*height))
        path.addCurve(to: CGPoint(x: 0.30475*width, y: 0.43204*height), control1: CGPoint(x: 0.31086*width, y: 0.4375*height), control2: CGPoint(x: 0.30702*width, y: 0.43545*height))
        path.addLine(to: CGPoint(x: 0.29401*width, y: 0.41593*height))
        path.addCurve(to: CGPoint(x: 0.21753*width, y: 0.375*height), control1: CGPoint(x: 0.27696*width, y: 0.39036*height), control2: CGPoint(x: 0.24826*width, y: 0.375*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.78008*width, y: 0.375*height))
        path.addCurve(to: CGPoint(x: 0.7036*width, y: 0.41593*height), control1: CGPoint(x: 0.74935*width, y: 0.375*height), control2: CGPoint(x: 0.72065*width, y: 0.39036*height))
        path.addLine(to: CGPoint(x: 0.69287*width, y: 0.43204*height))
        path.addCurve(to: CGPoint(x: 0.68266*width, y: 0.4375*height), control1: CGPoint(x: 0.69059*width, y: 0.43545*height), control2: CGPoint(x: 0.68676*width, y: 0.4375*height))
        path.addCurve(to: CGPoint(x: 0.52155*width, y: 0.61442*height), control1: CGPoint(x: 0.58732*width, y: 0.4375*height), control2: CGPoint(x: 0.51265*width, y: 0.5195*height))
        path.addLine(to: CGPoint(x: 0.52829*width, y: 0.68633*height))
        path.addCurve(to: CGPoint(x: 0.68973*width, y: 0.83334*height), control1: CGPoint(x: 0.5361*width, y: 0.76965*height), control2: CGPoint(x: 0.60604*width, y: 0.83334*height))
        path.addLine(to: CGPoint(x: 0.9247*width, y: 0.83334*height))
        path.addCurve(to: CGPoint(x: 0.95595*width, y: 0.80209*height), control1: CGPoint(x: 0.94196*width, y: 0.83334*height), control2: CGPoint(x: 0.95595*width, y: 0.81934*height))
        path.addLine(to: CGPoint(x: 0.95595*width, y: 0.53125*height))
        path.addCurve(to: CGPoint(x: 0.9247*width, y: 0.5*height), control1: CGPoint(x: 0.95595*width, y: 0.51399*height), control2: CGPoint(x: 0.94196*width, y: 0.5*height))
        path.addCurve(to: CGPoint(x: 0.88143*width, y: 0.47115*height), control1: CGPoint(x: 0.90577*width, y: 0.5*height), control2: CGPoint(x: 0.88871*width, y: 0.48862*height))
        path.addLine(to: CGPoint(x: 0.86493*width, y: 0.43157*height))
        path.addCurve(to: CGPoint(x: 0.78008*width, y: 0.375*height), control1: CGPoint(x: 0.85066*width, y: 0.39731*height), control2: CGPoint(x: 0.8172*width, y: 0.375*height))
        path.closeSubpath()
        return path
    }
}
