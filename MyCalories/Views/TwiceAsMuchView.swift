//
//  TwiceAsMuchView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-29.
//

import SwiftUI

struct TopRoundedRectangle: Shape {
    let cornerRadius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + cornerRadius))
        
        // Top-left corner curve
        path.addQuadCurve(
            to: CGPoint(x: rect.minX + cornerRadius, y: rect.minY),
            control: CGPoint(x: rect.minX, y: rect.minY)
        )
        
        // Top edge to top-right corner
        path.addLine(to: CGPoint(x: rect.maxX - cornerRadius, y: rect.minY))
        
        // Top-right corner curve
        path.addQuadCurve(
            to: CGPoint(x: rect.maxX, y: rect.minY + cornerRadius),
            control: CGPoint(x: rect.maxX, y: rect.minY)
        )
        
        // Right edge down to bottom-right
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        // Bottom edge back to start
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        return path
    }
}

struct TwiceAsMuchView: View {
    @Environment(Router.self) var router
    @State private var showBars = false
    
    var body: some View {
        OnboardingLeadingView(
            title: "Gain twice as much weight with MyCalories vs on your own",
            showButton: true
        ) {
            VStack(spacing: 0) {
                HStack(alignment: .bottom, spacing: 80) {
                    TopRoundedRectangle(cornerRadius: 4)
                        .fill(.foregroundSecondary)
                        .opacity(0.4)

                        .frame(width: 40, height: showBars ? 60 : 0)
                        .animation(.spring(duration: 0.8), value: showBars)
                    
                    VStack {
                        Text("2X")
                            .font(Font.questionTitle)
                        TopRoundedRectangle(cornerRadius: 4)
                            .fill(Color.green)
                            .frame(width: 40, height: showBars ? 200 : 0)
                            .animation(.spring(duration: 1.2), value: showBars)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                
                GeometryReader { geo in
                    Path { path in
                        let y = geo.size.height / 2
                        path.move(to: CGPoint(x: 0, y: y))
                        path.addLine(to: CGPoint(x: geo.size.width, y: y))
                    }
                    .stroke(
                        Color.foregroundSecondary.opacity(0.4),
                        style: StrokeStyle(lineWidth: 1, dash: [6, 6])
                    )
                }
                .frame(height: 1)
                
                Text("MyCalories makes it easy and holds you accountable")
                    .font(.questionSubtitle)
                    .foregroundColor(.foregroundSecondary)
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.top)
            }
            .padding(.bottom, Constants.Padding.large * 2)
            .onAppear {
                showBars = true
            }
        }
    }
}

#Preview {
    TwiceAsMuchView()
        .withRouter()
}
