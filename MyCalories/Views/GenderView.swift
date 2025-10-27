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
        VStack(alignment: .leading) {
            Text("Choose your gender")
                .font(Font.heading)
            Spacer()
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .safeAreaInset(edge: .bottom) {
            VStack {
                OptionButton(label: "Male", shape: AnyShape(Male()), color: Color.blue) {
                    router.navigateToTrialHistory()
                }
                OptionButton(label: "Female", shape: AnyShape(Female()), color: Color.purple) {
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
    }
}

#Preview {
    GenderView()
        .withRouter()
}
