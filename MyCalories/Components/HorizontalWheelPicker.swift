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
                        let dividerHeight: CGFloat = isMainDivider ? 200 : 20
                        
                        Divider()
                            .background(isMainDivider ? Color.primary : Color.gray)
                            .frame(width: 0, height: dividerHeight, alignment: .bottom)
                            .frame(maxHeight: 20, alignment: .bottom)
                            .overlay(alignment: .bottom) {
                                if isMainDivider && config.showsText {
                                    Text("\((index / config.steps) * config.multiplier)")
                                        .font(.caption)
                                        .fontWeight(.medium)
                                        .textScale(.secondary)
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
            .overlay(alignment: .center) {
                Rectangle()
                    .frame(width: 1, height: 40)
                    .padding(.bottom, 20)
            }
            .safeAreaPadding(.horizontal, horizontalPadding)
            .onAppear {
                if !isLoaded { isLoaded = true }
            }
        }
        .frame(height: 60)
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

    struct Config: Equatable {
        var count: Int
        var steps: Int = 10
        var spacing: CGFloat = 10
        var multiplier: Int = 10
        var showsText: Bool = true
        
    }
}

#Preview {
    @Previewable @State var value: CGFloat = 0
    let config = HorizontalWheelPicker.Config(count: 30)
    HorizontalWheelPicker(config: config, value: $value)
}
