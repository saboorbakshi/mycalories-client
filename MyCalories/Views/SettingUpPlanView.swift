//
//  SettingUpPlanView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct SettingUpPlanView: View {
    @Environment(Router.self) var router
    @Environment(\.currentOnboardingIndex) var currentIndex
    
    @State private var progress: Double = 0.0
    
    var body: some View {
        OnboardingCenterView(showButton: false) {
            VStack(spacing: Constants.Padding.large * 2) {
                
                ZStack {
                    Circle()
                        .stroke(
                            style: StrokeStyle(lineWidth: 20, dash: [4.25, 4])
                        )
                        .frame(width: 200, height: 200)
                        .foregroundColor(.foregroundSecondary).opacity(0.1)
                        .rotationEffect(.degrees(-90))
                    
                    Circle()
                        .trim(from: 0, to: progress / 100)
                        .stroke(
                            style: StrokeStyle(lineWidth: 20, dash: [4.25, 4])
                        )
                        .frame(width: 200, height: 200)
                        .foregroundColor(.green)
                        .rotationEffect(.degrees(-90))
                    
                    Text("\(Int(progress))%")
                        .font(.questionTitle)
                        .foregroundColor(progress == 100 ? .green : .foregroundPrimary)
                }
                .onAppear {
                    animateProgress()
                }
                
                Text("Setting up everything for you...")
                    .font(.questionTitle)
                    .multilineTextAlignment(.center)
            }
        }
    }
    
    private func animateProgress() {
        let duration: Double = 7.0  // 2 + 2 + 3 = 7 seconds total
        let startTime = Date()
        
        Timer.scheduledTimer(withTimeInterval: 0.016, repeats: true) { timer in
            let elapsed = Date().timeIntervalSince(startTime)
            
            let easedProgress: Double
            if elapsed < 2.0 {
                // First 2 seconds -> 0% to 50% (zoom)
                easedProgress = (elapsed / 2.0) * 0.5
            } else if elapsed < 4.0 {
                // Next 2 seconds -> 50% to 80% (moderate)
                let timeInPhase = elapsed - 2.0
                easedProgress = 0.5 + (timeInPhase / 2.0) * 0.3
            } else if elapsed < 7.0 {
                // Last 3 seconds -> 80% to 100% (very slow)
                let timeInPhase = elapsed - 4.0
                easedProgress = 0.8 + (timeInPhase / 3.0) * 0.2
            } else {
                easedProgress = 1.0
            }
            
            withAnimation(.linear(duration: 0.016)) {
                progress = easedProgress * 100
            }
            
            if elapsed >= duration {
                timer.invalidate()
                router.push(OnboardingRoute.allCases[currentIndex + 1])
            }
        }
    }
}

#Preview {
    SettingUpPlanView()
        .withRouter()
}
