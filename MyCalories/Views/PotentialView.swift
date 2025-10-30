//
//  PotentialView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct PotentialView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingLeadingView(
            title: "You have great potential to crush your goal"
        ) {}
    }
}

#Preview {
    PotentialView()
        .withRouter()
}
