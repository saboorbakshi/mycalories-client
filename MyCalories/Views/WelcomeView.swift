//
//  WelcomeView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import SwiftUI

struct WelcomeView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        VStack {
            Text("Calorie tracking made easy")
                .font(Font.questionTitle)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .padding()
        .safeAreaInset(edge: .bottom) {
            VStack {
                AppButton(label: "Get Started", type: .primary) {
                    router.navigateToGender()
                }
                AppButton(label: "Already have an account?", type: .secondary) {
                    router.navigateToGender()
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    WelcomeView()
        .withRouter()
}
