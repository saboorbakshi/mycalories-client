//
//  RatingView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct RatingView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingLeadingView(
            title: "Give us a rating",
            showButton: true
        ) {}
    }
}

#Preview {
    RatingView()
        .withRouter()
}
