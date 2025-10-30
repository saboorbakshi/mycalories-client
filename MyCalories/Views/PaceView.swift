//
//  PaceView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct PaceView: View {
    @State private var paceValue: Double = 0.8
    
    let targetWeight: Double = 78.3
    
    private var goalType: String {
        return targetWeight < 78 ? "loss" : "gain"
    }
    
    private var paceDescription: String {
        if paceValue <= 0.3 {
            return "Slow and steady"
        } else if paceValue >= 1.1 {
            return "May develop loose skin"
        } else {
            return "Recommended rate"
        }
    }
    
    private var paceColor: Color {
        if paceValue <= 0.3 {
            return .blue
        } else if paceValue >= 1.1 {
            return .red
        } else {
            return .foregroundSecondary
        }
    }
    
    var body: some View {
        OnboardingLeadingView(
            title: "How fast do you want to reach your goal?",
            showButton: true
        ) {
            VStack {
                VStack(spacing: Constants.Spacing.large) {
                    Text(paceDescription)
                        .font(.tiny)
                        .padding(.horizontal, 20)
                        .padding(.vertical, 14)
                        .background(
                            RoundedRectangle(cornerRadius: Constants.Radius.full)
                                .fill(Color.backgroundSecondary)
                        )
                        .animation(.easeInOut(duration: 0.2), value: paceValue)
                        .padding(.bottom)
                    
                    Text("Weight \(goalType) per week")
                        .font(.questionSubtitle)
                    
                    Text(String(format: "%.1f", paceValue))
                        .font(Font.questionTitle)
                    
                    VStack(spacing: Constants.Spacing.medium) {
                        Slider(value: $paceValue, in: 0.1...1.5)
                            .tint(.foregroundPrimary)
                            .padding(.horizontal, Constants.Padding.large)
                        
                        HStack {
                            Text("0.1 kg")
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("0.8 kg")
                                .frame(maxWidth: .infinity, alignment: .center)
                            Text("1.6 kg")
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }
                        .font(.questionSubtitle)
                        .foregroundColor(.foregroundSecondary)
                        .padding(.horizontal)
                    }
                }
            }
            .padding(.bottom, Constants.Padding.large * 2)
        }
    }
}

#Preview {
    PaceView()
        .withRouter()
}
