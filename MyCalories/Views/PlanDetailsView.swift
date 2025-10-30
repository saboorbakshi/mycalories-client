//
//  PlanDetailsView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct PlanDetailsView: View {
    var body: some View {
        OnboardingLeadingView(
            title: "Congratulations! Your custom plan is ready",
            showButton: true
        ) {}
    }
}

#Preview {
    PlanDetailsView()
        .withRouter()
}
