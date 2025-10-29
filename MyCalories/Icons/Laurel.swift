//
//  CalendarClock.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct Laurel: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.30488*width, y: 0.09579*height))
        path.addCurve(to: CGPoint(x: 0.26287*width, y: 0.08839*height), control1: CGPoint(x: 0.295*width, y: 0.08267*height), control2: CGPoint(x: 0.27664*width, y: 0.07943*height))
        path.addCurve(to: CGPoint(x: 0.1728*width, y: 0.20588*height), control1: CGPoint(x: 0.21449*width, y: 0.11986*height), control2: CGPoint(x: 0.18121*width, y: 0.15845*height))
        path.addCurve(to: CGPoint(x: 0.18221*width, y: 0.28648*height), control1: CGPoint(x: 0.16802*width, y: 0.23279*height), control2: CGPoint(x: 0.17175*width, y: 0.25977*height))
        path.addCurve(to: CGPoint(x: 0.13033*width, y: 0.26931*height), control1: CGPoint(x: 0.16642*width, y: 0.27933*height), control2: CGPoint(x: 0.14903*width, y: 0.27367*height))
        path.addCurve(to: CGPoint(x: 0.09334*width, y: 0.29067*height), control1: CGPoint(x: 0.1143*width, y: 0.26558*height), control2: CGPoint(x: 0.09812*width, y: 0.27491*height))
        path.addCurve(to: CGPoint(x: 0.10029*width, y: 0.43834*height), control1: CGPoint(x: 0.0766*width, y: 0.34576*height), control2: CGPoint(x: 0.07607*width, y: 0.39664*height))
        path.addCurve(to: CGPoint(x: 0.14094*width, y: 0.48237*height), control1: CGPoint(x: 0.11046*width, y: 0.45585*height), control2: CGPoint(x: 0.12422*width, y: 0.47041*height))
        path.addCurve(to: CGPoint(x: 0.08477*width, y: 0.49353*height), control1: CGPoint(x: 0.12288*width, y: 0.48389*height), control2: CGPoint(x: 0.10409*width, y: 0.48773*height))
        path.addCurve(to: CGPoint(x: 0.06334*width, y: 0.53063*height), control1: CGPoint(x: 0.06894*width, y: 0.49828*height), control2: CGPoint(x: 0.05955*width, y: 0.51455*height))
        path.addCurve(to: CGPoint(x: 0.14354*width, y: 0.65497*height), control1: CGPoint(x: 0.07656*width, y: 0.58669*height), control2: CGPoint(x: 0.10169*width, y: 0.63095*height))
        path.addCurve(to: CGPoint(x: 0.22264*width, y: 0.67369*height), control1: CGPoint(x: 0.16724*width, y: 0.66858*height), control2: CGPoint(x: 0.1939*width, y: 0.6743*height))
        path.addCurve(to: CGPoint(x: 0.1735*width, y: 0.71141*height), control1: CGPoint(x: 0.20584*width, y: 0.68317*height), control2: CGPoint(x: 0.18934*width, y: 0.69567*height))
        path.addCurve(to: CGPoint(x: 0.17281*width, y: 0.75503*height), control1: CGPoint(x: 0.16148*width, y: 0.72336*height), control2: CGPoint(x: 0.16117*width, y: 0.74271*height))
        path.addCurve(to: CGPoint(x: 0.29046*width, y: 0.82201*height), control1: CGPoint(x: 0.20848*width, y: 0.7928*height), control2: CGPoint(x: 0.2476*width, y: 0.81747*height))
        path.addCurve(to: CGPoint(x: 0.4037*width, y: 0.78506*height), control1: CGPoint(x: 0.3308*width, y: 0.8263*height), control2: CGPoint(x: 0.36879*width, y: 0.81219*height))
        path.addCurve(to: CGPoint(x: 0.40426*width, y: 0.80146*height), control1: CGPoint(x: 0.40468*width, y: 0.79066*height), control2: CGPoint(x: 0.40486*width, y: 0.79617*height))
        path.addCurve(to: CGPoint(x: 0.35617*width, y: 0.85744*height), control1: CGPoint(x: 0.40225*width, y: 0.8189*height), control2: CGPoint(x: 0.39081*width, y: 0.84022*height))
        path.addCurve(to: CGPoint(x: 0.3421*width, y: 0.89933*height), control1: CGPoint(x: 0.34072*width, y: 0.86512*height), control2: CGPoint(x: 0.33441*width, y: 0.88388*height))
        path.addCurve(to: CGPoint(x: 0.38399*width, y: 0.9134*height), control1: CGPoint(x: 0.34978*width, y: 0.91478*height), control2: CGPoint(x: 0.36854*width, y: 0.92108*height))
        path.addCurve(to: CGPoint(x: 0.46635*width, y: 0.80862*height), control1: CGPoint(x: 0.43351*width, y: 0.88878*height), control2: CGPoint(x: 0.46144*width, y: 0.85123*height))
        path.addCurve(to: CGPoint(x: 0.3114*width, y: 0.65023*height), control1: CGPoint(x: 0.47634*width, y: 0.72184*height), control2: CGPoint(x: 0.39315*width, y: 0.65153*height))
        path.addCurve(to: CGPoint(x: 0.30805*width, y: 0.65021*height), control1: CGPoint(x: 0.31029*width, y: 0.65021*height), control2: CGPoint(x: 0.30917*width, y: 0.65021*height))
        path.addCurve(to: CGPoint(x: 0.31313*width, y: 0.62474*height), control1: CGPoint(x: 0.31318*width, y: 0.6431*height), control2: CGPoint(x: 0.31529*width, y: 0.63389*height))
        path.addCurve(to: CGPoint(x: 0.25089*width, y: 0.51275*height), control1: CGPoint(x: 0.30192*width, y: 0.57722*height), control2: CGPoint(x: 0.28215*width, y: 0.53817*height))
        path.addCurve(to: CGPoint(x: 0.26223*width, y: 0.49668*height), control1: CGPoint(x: 0.25613*width, y: 0.50888*height), control2: CGPoint(x: 0.2602*width, y: 0.50336*height))
        path.addCurve(to: CGPoint(x: 0.25845*width, y: 0.35479*height), control1: CGPoint(x: 0.2782*width, y: 0.44411*height), control2: CGPoint(x: 0.27941*width, y: 0.39537*height))
        path.addLine(to: CGPoint(x: 0.25906*width, y: 0.3544*height))
        path.addCurve(to: CGPoint(x: 0.34913*width, y: 0.23691*height), control1: CGPoint(x: 0.30743*width, y: 0.32294*height), control2: CGPoint(x: 0.34072*width, y: 0.28434*height))
        path.addCurve(to: CGPoint(x: 0.30488*width, y: 0.09579*height), control1: CGPoint(x: 0.35754*width, y: 0.18947*height), control2: CGPoint(x: 0.33953*width, y: 0.14184*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.73715*width, y: 0.08839*height))
        path.addCurve(to: CGPoint(x: 0.69514*width, y: 0.09579*height), control1: CGPoint(x: 0.72337*width, y: 0.07943*height), control2: CGPoint(x: 0.70502*width, y: 0.08267*height))
        path.addCurve(to: CGPoint(x: 0.65088*width, y: 0.23691*height), control1: CGPoint(x: 0.66048*width, y: 0.14184*height), control2: CGPoint(x: 0.64247*width, y: 0.18947*height))
        path.addCurve(to: CGPoint(x: 0.74095*width, y: 0.3544*height), control1: CGPoint(x: 0.6593*width, y: 0.28434*height), control2: CGPoint(x: 0.69258*width, y: 0.32294*height))
        path.addLine(to: CGPoint(x: 0.74156*width, y: 0.35479*height))
        path.addCurve(to: CGPoint(x: 0.73778*width, y: 0.49668*height), control1: CGPoint(x: 0.7206*width, y: 0.39537*height), control2: CGPoint(x: 0.72181*width, y: 0.44411*height))
        path.addCurve(to: CGPoint(x: 0.74912*width, y: 0.51275*height), control1: CGPoint(x: 0.73981*width, y: 0.50336*height), control2: CGPoint(x: 0.74388*width, y: 0.50888*height))
        path.addCurve(to: CGPoint(x: 0.68688*width, y: 0.62474*height), control1: CGPoint(x: 0.71786*width, y: 0.53817*height), control2: CGPoint(x: 0.6981*width, y: 0.57722*height))
        path.addCurve(to: CGPoint(x: 0.69196*width, y: 0.65021*height), control1: CGPoint(x: 0.68472*width, y: 0.63389*height), control2: CGPoint(x: 0.68683*width, y: 0.6431*height))
        path.addCurve(to: CGPoint(x: 0.68861*width, y: 0.65023*height), control1: CGPoint(x: 0.69084*width, y: 0.65021*height), control2: CGPoint(x: 0.68973*width, y: 0.65021*height))
        path.addCurve(to: CGPoint(x: 0.53367*width, y: 0.80862*height), control1: CGPoint(x: 0.60686*width, y: 0.65153*height), control2: CGPoint(x: 0.52367*width, y: 0.72184*height))
        path.addCurve(to: CGPoint(x: 0.61602*width, y: 0.9134*height), control1: CGPoint(x: 0.53858*width, y: 0.85123*height), control2: CGPoint(x: 0.5665*width, y: 0.88878*height))
        path.addCurve(to: CGPoint(x: 0.65791*width, y: 0.89933*height), control1: CGPoint(x: 0.63148*width, y: 0.92108*height), control2: CGPoint(x: 0.65023*width, y: 0.91478*height))
        path.addCurve(to: CGPoint(x: 0.64384*width, y: 0.85744*height), control1: CGPoint(x: 0.6656*width, y: 0.88388*height), control2: CGPoint(x: 0.6593*width, y: 0.86512*height))
        path.addCurve(to: CGPoint(x: 0.59575*width, y: 0.80146*height), control1: CGPoint(x: 0.6092*width, y: 0.84022*height), control2: CGPoint(x: 0.59776*width, y: 0.8189*height))
        path.addCurve(to: CGPoint(x: 0.59631*width, y: 0.78506*height), control1: CGPoint(x: 0.59515*width, y: 0.79617*height), control2: CGPoint(x: 0.59533*width, y: 0.79066*height))
        path.addCurve(to: CGPoint(x: 0.70955*width, y: 0.82201*height), control1: CGPoint(x: 0.63122*width, y: 0.81219*height), control2: CGPoint(x: 0.66922*width, y: 0.8263*height))
        path.addCurve(to: CGPoint(x: 0.8272*width, y: 0.75503*height), control1: CGPoint(x: 0.75241*width, y: 0.81747*height), control2: CGPoint(x: 0.79153*width, y: 0.7928*height))
        path.addCurve(to: CGPoint(x: 0.82651*width, y: 0.71141*height), control1: CGPoint(x: 0.83884*width, y: 0.74271*height), control2: CGPoint(x: 0.83853*width, y: 0.72336*height))
        path.addCurve(to: CGPoint(x: 0.77737*width, y: 0.67369*height), control1: CGPoint(x: 0.81067*width, y: 0.69567*height), control2: CGPoint(x: 0.79417*width, y: 0.68317*height))
        path.addCurve(to: CGPoint(x: 0.85647*width, y: 0.65497*height), control1: CGPoint(x: 0.80611*width, y: 0.6743*height), control2: CGPoint(x: 0.83277*width, y: 0.66858*height))
        path.addCurve(to: CGPoint(x: 0.93667*width, y: 0.53063*height), control1: CGPoint(x: 0.89832*width, y: 0.63095*height), control2: CGPoint(x: 0.92345*width, y: 0.58669*height))
        path.addCurve(to: CGPoint(x: 0.91524*width, y: 0.49353*height), control1: CGPoint(x: 0.94047*width, y: 0.51455*height), control2: CGPoint(x: 0.93107*width, y: 0.49828*height))
        path.addCurve(to: CGPoint(x: 0.85907*width, y: 0.48237*height), control1: CGPoint(x: 0.89592*width, y: 0.48773*height), control2: CGPoint(x: 0.87713*width, y: 0.48389*height))
        path.addCurve(to: CGPoint(x: 0.89972*width, y: 0.43834*height), control1: CGPoint(x: 0.87579*width, y: 0.47041*height), control2: CGPoint(x: 0.88955*width, y: 0.45585*height))
        path.addCurve(to: CGPoint(x: 0.90668*width, y: 0.29067*height), control1: CGPoint(x: 0.92394*width, y: 0.39664*height), control2: CGPoint(x: 0.92341*width, y: 0.34576*height))
        path.addCurve(to: CGPoint(x: 0.86968*width, y: 0.26931*height), control1: CGPoint(x: 0.90189*width, y: 0.27491*height), control2: CGPoint(x: 0.88571*width, y: 0.26558*height))
        path.addCurve(to: CGPoint(x: 0.8178*width, y: 0.28648*height), control1: CGPoint(x: 0.85098*width, y: 0.27367*height), control2: CGPoint(x: 0.83359*width, y: 0.27933*height))
        path.addCurve(to: CGPoint(x: 0.82722*width, y: 0.20588*height), control1: CGPoint(x: 0.82826*width, y: 0.25977*height), control2: CGPoint(x: 0.83199*width, y: 0.23279*height))
        path.addCurve(to: CGPoint(x: 0.73715*width, y: 0.08839*height), control1: CGPoint(x: 0.8188*width, y: 0.15845*height), control2: CGPoint(x: 0.78552*width, y: 0.11986*height))
        path.closeSubpath()
        return path
    }
}
