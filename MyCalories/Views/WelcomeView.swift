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
        Text("Hello, Welcome buddies!")
        
        Button(action: {
            router.navigateToGender()
        }) {
            Text("Continue")
                .font(Font.button)
                .frame(height: Constants.Height.button)
                .frame(maxWidth: .infinity)
                .background(Color.buttonBackground)
                .foregroundColor(.buttonForeground)
                .cornerRadius(Constants.Radius.full)

        }
    }
}

#Preview {
    WelcomeView()
        .withRouter()
}
