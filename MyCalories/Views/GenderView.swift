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
        VStack(alignment: .leading, spacing: 8) {
            Text("Choose your gender")
                .font(.heading)
            
            Text("This will be used to calibrate your plan")
                .font(Font.subHeading)
                .foregroundColor(.secondaryForeground)

            
            Spacer()
        }
        .padding(.top)
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .safeAreaInset(edge: .bottom) {
            VStack {
                OptionButton(label: "Male", icon: .shape(AnyShape(Male())), color: Color.blue) {
                    router.navigateToTrialHistory()
                }
                OptionButton(label: "Female", icon: .shape(AnyShape(Female())), color: Color.purple) {
                    router.navigateToTrialHistory()
                }
            }
            .padding(.horizontal)
        }
        .safeAreaInset(edge: .top) {
            OnboardingToolbar {
                router.pop()
            }
        }
        .toolbarVisibility(.hidden)
    }
}

#Preview {
    GenderView()
        .withRouter()
}
