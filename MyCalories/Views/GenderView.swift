//
//  GenderView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import SwiftUI

struct GenderView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingQuestionView(
            title: "Choose your gender",
            subtitle: "This will be used to calibrate your plan.",
            onBack: { router.pop() }
        ) {
            OptionButton(label: "Male", icon: .shape(AnyShape(Male())), color: Color.blue) {
                router.navigateToNumWorkouts()
            }
            OptionButton(label: "Female", icon: .shape(AnyShape(Female())), color: Color.purple) {
                router.navigateToNumWorkouts()
            }
        }
    }
}

#Preview {
    GenderView()
        .withRouter()
}
