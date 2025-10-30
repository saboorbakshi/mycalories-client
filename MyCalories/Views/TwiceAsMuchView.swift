//
//  TwiceAsMuchView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-29.
//

import SwiftUI

struct TwiceAsMuchView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingLeadingView(
            title: "Gain twice as much weight with MyCalories vs on your own",
            showButton: true
        ) {}
    }
}

#Preview {
    TwiceAsMuchView()
        .withRouter()
}

