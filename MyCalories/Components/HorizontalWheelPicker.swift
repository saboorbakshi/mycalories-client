//
//  HorizontalWheelPicker.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct HorizontalWheelPicker: View {
    
    var config: Config
    @Binding var value: CGFloat
    @State private var isLoaded: Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            let size = geometry.size
            let horizontalPadding = size.width / 2
            
            ScrollView(.horizontal) {
                HStack(spacing: config.spacing) {
                    let totalSteps = config.steps * config.count
                    
                    ForEach(0...totalSteps, id: \.self) { index in
                        let remainder = index % config.steps
                        let isMainDivider = remainder == 0
                        let dividerHeight: CGFloat = isMainDivider ? 35 : 20
                        
                        Divider()
                            .frame(width: 0, height: dividerHeight, alignment: .center)
                            .frame(maxHeight: 20, alignment: .bottom)
                            .overlay(alignment: .bottom) {
                                if isMainDivider && config.showsText {
                                    Text("\((index / config.steps) * config.multiplier)")
                                        .font(.tiny)
                                        .foregroundColor(.foregroundSecondary)
                                        .fixedSize()
                                        .offset(y: 20)
                                }
                            }
                    }
                }
                .frame(height: size.height)
                .scrollTargetLayout()
            }
            .scrollIndicators(.hidden)
            .scrollTargetBehavior(.viewAligned)
            .scrollPosition(id: scrollPositionBinding)
            .onAppear {
                if !isLoaded { isLoaded = true }
            }
            .onChange(of: value) {
                let generator = UIImpactFeedbackGenerator(style: .light)
                generator.impactOccurred()
            }
            .overlay(alignment: .center) {
                VStack {
                    InvertedTriangle()
                        .frame(width: 16, height: 12)
                    
                    Rectangle()
                        .frame(width: 1, height: 50)
                        .padding(.bottom, 50)  // experiment
                }
            }
            .safeAreaPadding(.horizontal, horizontalPadding)
            .onAppear {
                if !isLoaded { isLoaded = true }
            }
            .onChange(of: value) {
                let generator = UIImpactFeedbackGenerator(style: .light)
                generator.impactOccurred()
            }
        }
        .frame(height: 60, alignment: .center)  // experiment with .background(.red)
        .padding(.top, 30)  // experiment with .background(.red)
        .horizontalFade()
    }
    
    private var scrollPositionBinding: Binding<Int?> {
        Binding(
            get: {
                return isLoaded ? (Int(value) * config.steps) / config.multiplier : nil
            },
            set: { newValue in
                if let newValue {
                    value = (CGFloat(newValue) / CGFloat(config.steps)) * CGFloat(config.multiplier)
                }
            }
        )
    }
    
    private struct InvertedTriangle: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
            path.closeSubpath()
            return path
        }
    }

    struct Config: Equatable {
        var count: Int
        var steps: Int = 10
        var spacing: CGFloat = 8
        var multiplier: Int = 1
        var showsText: Bool = true
    }
}

#Preview {
    @Previewable @State var value: CGFloat = 4
    let config = HorizontalWheelPicker.Config(count: 20)
    HorizontalWheelPicker(config: config, value: $value)
}
