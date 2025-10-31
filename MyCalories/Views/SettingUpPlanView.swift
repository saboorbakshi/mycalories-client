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
        OnboardingCenterView(showButton: false) { // hide button while loading
            VStack(spacing: 24) {
                ProgressView(value: progress)
                    .progressViewStyle(CircularProgressViewStyle(tint: .green))
                    .scaleEffect(2.0) // make it larger
                    .frame(width: 100, height: 100)
                
                Text("Setting up everything for you...")
                    .font(.questionTitle)
                    .multilineTextAlignment(.center)
            }
            .onAppear {
                animateProgress()
            }
        }
    }
    
    private func animateProgress() {
        // Animate smoothly over 4 seconds
        withAnimation(.easeInOut(duration: 4)) {
            progress = 1.0
        }
        
        // After animation completes, navigate automatically
//        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
//            router.push(OnboardingRoute.allCases[currentIndex + 1])
//        }
    }
}

#Preview {
    SettingUpPlanView()
        .withRouter()
}
