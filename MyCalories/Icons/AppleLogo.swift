//
//  CalendarClock.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct AppleLogo: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.83348*width, y: 0.29826*height))
        path.addCurve(to: CGPoint(x: 0.76462*width, y: 0.36941*height), control1: CGPoint(x: 0.80488*width, y: 0.31577*height), control2: CGPoint(x: 0.78119*width, y: 0.34025*height))
        path.addCurve(to: CGPoint(x: 0.73877*width, y: 0.46499*height), control1: CGPoint(x: 0.74806*width, y: 0.39857*height), control2: CGPoint(x: 0.73917*width, y: 0.43145*height))
        path.addCurve(to: CGPoint(x: 0.77093*width, y: 0.57106*height), control1: CGPoint(x: 0.73888*width, y: 0.50273*height), control2: CGPoint(x: 0.75007*width, y: 0.53961*height))
        path.addCurve(to: CGPoint(x: 0.85616*width, y: 0.64192*height), control1: CGPoint(x: 0.7918*width, y: 0.60251*height), control2: CGPoint(x: 0.82143*width, y: 0.62715*height))
        path.addCurve(to: CGPoint(x: 0.79605*width, y: 0.76612*height), control1: CGPoint(x: 0.84247*width, y: 0.6861*height), control2: CGPoint(x: 0.8222*width, y: 0.72797*height))
        path.addCurve(to: CGPoint(x: 0.65995*width, y: 0.87386*height), control1: CGPoint(x: 0.75862*width, y: 0.81999*height), control2: CGPoint(x: 0.71949*width, y: 0.87386*height))
        path.addCurve(to: CGPoint(x: 0.51647*width, y: 0.83927*height), control1: CGPoint(x: 0.6004*width, y: 0.87386*height), control2: CGPoint(x: 0.58509*width, y: 0.83927*height))
        path.addCurve(to: CGPoint(x: 0.37129*width, y: 0.875*height), control1: CGPoint(x: 0.44955*width, y: 0.83927*height), control2: CGPoint(x: 0.42573*width, y: 0.875*height))
        path.addCurve(to: CGPoint(x: 0.23518*width, y: 0.76385*height), control1: CGPoint(x: 0.31684*width, y: 0.875*height), control2: CGPoint(x: 0.27885*width, y: 0.82509*height))
        path.addCurve(to: CGPoint(x: 0.14388*width, y: 0.47406*height), control1: CGPoint(x: 0.1775*width, y: 0.67805*height), control2: CGPoint(x: 0.1458*width, y: 0.57743*height))
        path.addCurve(to: CGPoint(x: 0.36335*width, y: 0.21376*height), control1: CGPoint(x: 0.14388*width, y: 0.30393*height), control2: CGPoint(x: 0.25447*width, y: 0.21376*height))
        path.addCurve(to: CGPoint(x: 0.50569*width, y: 0.25175*height), control1: CGPoint(x: 0.42119*width, y: 0.21376*height), control2: CGPoint(x: 0.4694*width, y: 0.25175*height))
        path.addCurve(to: CGPoint(x: 0.65995*width, y: 0.21149*height), control1: CGPoint(x: 0.54029*width, y: 0.25175*height), control2: CGPoint(x: 0.59416*width, y: 0.21149*height))
        path.addCurve(to: CGPoint(x: 0.75755*width, y: 0.2332*height), control1: CGPoint(x: 0.69377*width, y: 0.21062*height), control2: CGPoint(x: 0.72728*width, y: 0.21807*height))
        path.addCurve(to: CGPoint(x: 0.83348*width, y: 0.29826*height), control1: CGPoint(x: 0.78781*width, y: 0.24833*height), control2: CGPoint(x: 0.81388*width, y: 0.27067*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.62875*width, y: 0.13947*height))
        path.addCurve(to: CGPoint(x: 0.67526*width, y: 0.01757*height), control1: CGPoint(x: 0.65775*width, y: 0.10536*height), control2: CGPoint(x: 0.67417*width, y: 0.06233*height))
        path.addCurve(to: CGPoint(x: 0.67356*width, y: 0), control1: CGPoint(x: 0.67531*width, y: 0.01167*height), control2: CGPoint(x: 0.67474*width, y: 0.00578*height))
        path.addCurve(to: CGPoint(x: 0.54482*width, y: 0.06635*height), control1: CGPoint(x: 0.62375*width, y: 0.00487*height), control2: CGPoint(x: 0.57768*width, y: 0.02861*height))
        path.addCurve(to: CGPoint(x: 0.49662*width, y: 0.18487*height), control1: CGPoint(x: 0.51555*width, y: 0.0991*height), control2: CGPoint(x: 0.49851*width, y: 0.14098*height))
        path.addCurve(to: CGPoint(x: 0.49832*width, y: 0.20075*height), control1: CGPoint(x: 0.49664*width, y: 0.19021*height), control2: CGPoint(x: 0.49721*width, y: 0.19553*height))
        path.addCurve(to: CGPoint(x: 0.51023*width, y: 0.20189*height), control1: CGPoint(x: 0.50225*width, y: 0.2015*height), control2: CGPoint(x: 0.50623*width, y: 0.20188*height))
        path.addCurve(to: CGPoint(x: 0.5759*width, y: 0.18286*height), control1: CGPoint(x: 0.53318*width, y: 0.20006*height), control2: CGPoint(x: 0.55553*width, y: 0.19359*height))
        path.addCurve(to: CGPoint(x: 0.62875*width, y: 0.13947*height), control1: CGPoint(x: 0.59628*width, y: 0.17213*height), control2: CGPoint(x: 0.61426*width, y: 0.15737*height))
        path.closeSubpath()
        return path
    }
}
