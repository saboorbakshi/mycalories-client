//
//  FoodBowl.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct FoodBowl: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.59279*width, y: 0.36584*height))
        path.addCurve(to: CGPoint(x: 0.60795*width, y: 0.3911*height), control1: CGPoint(x: 0.60395*width, y: 0.36863*height), control2: CGPoint(x: 0.61074*width, y: 0.37994*height))
        path.addLine(to: CGPoint(x: 0.60039*width, y: 0.42139*height))
        path.addCurve(to: CGPoint(x: 0.57512*width, y: 0.43655*height), control1: CGPoint(x: 0.5976*width, y: 0.43256*height), control2: CGPoint(x: 0.58628*width, y: 0.43935*height))
        path.addLine(to: CGPoint(x: 0.53221*width, y: 0.42583*height))
        path.addCurve(to: CGPoint(x: 0.51705*width, y: 0.40057*height), control1: CGPoint(x: 0.52105*width, y: 0.42304*height), control2: CGPoint(x: 0.51426*width, y: 0.41173*height))
        path.addLine(to: CGPoint(x: 0.52461*width, y: 0.37028*height))
        path.addCurve(to: CGPoint(x: 0.54988*width, y: 0.35511*height), control1: CGPoint(x: 0.5274*width, y: 0.35911*height), control2: CGPoint(x: 0.53872*width, y: 0.35232*height))
        path.addLine(to: CGPoint(x: 0.59279*width, y: 0.36584*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.31046*width, y: 0.33744*height))
        path.addCurve(to: CGPoint(x: 0.30468*width, y: 0.36633*height), control1: CGPoint(x: 0.31685*width, y: 0.34701*height), control2: CGPoint(x: 0.31426*width, y: 0.35995*height))
        path.addLine(to: CGPoint(x: 0.27864*width, y: 0.38368*height))
        path.addCurve(to: CGPoint(x: 0.24976*width, y: 0.37789*height), control1: CGPoint(x: 0.26907*width, y: 0.39005*height), control2: CGPoint(x: 0.25614*width, y: 0.38747*height))
        path.addLine(to: CGPoint(x: 0.2312*width, y: 0.35006*height))
        path.addCurve(to: CGPoint(x: 0.23699*width, y: 0.32117*height), control1: CGPoint(x: 0.22482*width, y: 0.34049*height), control2: CGPoint(x: 0.22741*width, y: 0.32755*height))
        path.addLine(to: CGPoint(x: 0.26302*width, y: 0.30382*height))
        path.addCurve(to: CGPoint(x: 0.29191*width, y: 0.30961*height), control1: CGPoint(x: 0.2726*width, y: 0.29745*height), control2: CGPoint(x: 0.28553*width, y: 0.30004*height))
        path.addLine(to: CGPoint(x: 0.31046*width, y: 0.33744*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.73206*width, y: 0.31226*height))
        path.addCurve(to: CGPoint(x: 0.73784*width, y: 0.34114*height), control1: CGPoint(x: 0.74163*width, y: 0.31864*height), control2: CGPoint(x: 0.74422*width, y: 0.33157*height))
        path.addLine(to: CGPoint(x: 0.7205*width, y: 0.36718*height))
        path.addCurve(to: CGPoint(x: 0.6916*width, y: 0.37296*height), control1: CGPoint(x: 0.71412*width, y: 0.37676*height), control2: CGPoint(x: 0.70118*width, y: 0.37935*height))
        path.addLine(to: CGPoint(x: 0.66377*width, y: 0.35441*height))
        path.addCurve(to: CGPoint(x: 0.65799*width, y: 0.32552*height), control1: CGPoint(x: 0.6542*width, y: 0.34803*height), control2: CGPoint(x: 0.65161*width, y: 0.3351*height))
        path.addLine(to: CGPoint(x: 0.67533*width, y: 0.29949*height))
        path.addCurve(to: CGPoint(x: 0.70423*width, y: 0.29371*height), control1: CGPoint(x: 0.68172*width, y: 0.28991*height), control2: CGPoint(x: 0.69465*width, y: 0.28732*height))
        path.addLine(to: CGPoint(x: 0.73206*width, y: 0.31226*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.48615*width, y: 0.30562*height))
        path.addCurve(to: CGPoint(x: 0.47684*width, y: 0.33358*height), control1: CGPoint(x: 0.4913*width, y: 0.31591*height), control2: CGPoint(x: 0.48713*width, y: 0.32843*height))
        path.addLine(to: CGPoint(x: 0.43078*width, y: 0.35661*height))
        path.addCurve(to: CGPoint(x: 0.40283*width, y: 0.34731*height), control1: CGPoint(x: 0.42049*width, y: 0.36176*height), control2: CGPoint(x: 0.40798*width, y: 0.35759*height))
        path.addLine(to: CGPoint(x: 0.38885*width, y: 0.31938*height))
        path.addCurve(to: CGPoint(x: 0.39816*width, y: 0.29142*height), control1: CGPoint(x: 0.3837*width, y: 0.30909*height), control2: CGPoint(x: 0.38786*width, y: 0.29657*height))
        path.addLine(to: CGPoint(x: 0.44422*width, y: 0.26839*height))
        path.addCurve(to: CGPoint(x: 0.47217*width, y: 0.27769*height), control1: CGPoint(x: 0.45451*width, y: 0.26324*height), control2: CGPoint(x: 0.46702*width, y: 0.26741*height))
        path.addLine(to: CGPoint(x: 0.48615*width, y: 0.30562*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.5*width, y: 0.14583*height))
        path.addCurve(to: CGPoint(x: 0.81397*width, y: 0.20007*height), control1: CGPoint(x: 0.62101*width, y: 0.14583*height), control2: CGPoint(x: 0.73204*width, y: 0.1661*height))
        path.addCurve(to: CGPoint(x: 0.91541*width, y: 0.26294*height), control1: CGPoint(x: 0.85486*width, y: 0.21703*height), control2: CGPoint(x: 0.89001*width, y: 0.23804*height))
        path.addCurve(to: CGPoint(x: 0.95834*width, y: 0.35417*height), control1: CGPoint(x: 0.94091*width, y: 0.28794*height), control2: CGPoint(x: 0.95834*width, y: 0.31878*height))
        path.addLine(to: CGPoint(x: 0.95834*width, y: 0.39677*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.85416*height), control1: CGPoint(x: 0.95834*width, y: 0.64944*height), control2: CGPoint(x: 0.75307*width, y: 0.85416*height))
        path.addCurve(to: CGPoint(x: 0.04167*width, y: 0.39677*height), control1: CGPoint(x: 0.24694*width, y: 0.85416*height), control2: CGPoint(x: 0.04167*width, y: 0.64944*height))
        path.addLine(to: CGPoint(x: 0.04167*width, y: 0.35417*height))
        path.addCurve(to: CGPoint(x: 0.08459*width, y: 0.26294*height), control1: CGPoint(x: 0.04167*width, y: 0.31878*height), control2: CGPoint(x: 0.0591*width, y: 0.28794*height))
        path.addCurve(to: CGPoint(x: 0.18604*width, y: 0.20007*height), control1: CGPoint(x: 0.10999*width, y: 0.23804*height), control2: CGPoint(x: 0.14514*width, y: 0.21703*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.14583*height), control1: CGPoint(x: 0.26796*width, y: 0.1661*height), control2: CGPoint(x: 0.37899*width, y: 0.14583*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.5*width, y: 0.20833*height))
        path.addCurve(to: CGPoint(x: 0.20996*width, y: 0.25781*height), control1: CGPoint(x: 0.38514*width, y: 0.20833*height), control2: CGPoint(x: 0.28261*width, y: 0.22769*height))
        path.addCurve(to: CGPoint(x: 0.12834*width, y: 0.30754*height), control1: CGPoint(x: 0.17357*width, y: 0.2729*height), control2: CGPoint(x: 0.14616*width, y: 0.29006*height))
        path.addCurve(to: CGPoint(x: 0.10417*width, y: 0.35417*height), control1: CGPoint(x: 0.11062*width, y: 0.32491*height), control2: CGPoint(x: 0.10417*width, y: 0.34066*height))
        path.addCurve(to: CGPoint(x: 0.12834*width, y: 0.4008*height), control1: CGPoint(x: 0.10417*width, y: 0.36767*height), control2: CGPoint(x: 0.11062*width, y: 0.38343*height))
        path.addCurve(to: CGPoint(x: 0.20996*width, y: 0.45052*height), control1: CGPoint(x: 0.14616*width, y: 0.41827*height), control2: CGPoint(x: 0.17357*width, y: 0.43543*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.5*height), control1: CGPoint(x: 0.28261*width, y: 0.48064*height), control2: CGPoint(x: 0.38514*width, y: 0.5*height))
        path.addCurve(to: CGPoint(x: 0.79004*width, y: 0.45052*height), control1: CGPoint(x: 0.61486*width, y: 0.5*height), control2: CGPoint(x: 0.7174*width, y: 0.48064*height))
        path.addCurve(to: CGPoint(x: 0.87166*width, y: 0.4008*height), control1: CGPoint(x: 0.82642*width, y: 0.43543*height), control2: CGPoint(x: 0.85384*width, y: 0.41827*height))
        path.addCurve(to: CGPoint(x: 0.89584*width, y: 0.35417*height), control1: CGPoint(x: 0.88938*width, y: 0.38343*height), control2: CGPoint(x: 0.89584*width, y: 0.36767*height))
        path.addCurve(to: CGPoint(x: 0.87166*width, y: 0.30754*height), control1: CGPoint(x: 0.89584*width, y: 0.34066*height), control2: CGPoint(x: 0.88938*width, y: 0.32491*height))
        path.addCurve(to: CGPoint(x: 0.79004*width, y: 0.25781*height), control1: CGPoint(x: 0.85384*width, y: 0.29006*height), control2: CGPoint(x: 0.82642*width, y: 0.2729*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.20833*height), control1: CGPoint(x: 0.7174*width, y: 0.22769*height), control2: CGPoint(x: 0.61486*width, y: 0.20833*height))
        path.closeSubpath()
        return path
    }
}
