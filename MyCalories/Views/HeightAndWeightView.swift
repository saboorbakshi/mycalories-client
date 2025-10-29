//
//  HeightView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct HeightAndWeightView: View {
    @Environment(Router.self) var router
    @State private var selectedHeight = 170
    @State private var selectedWeight = 70
    
    let heights = Array(120...220)
    let weights = Array(40...200)
    
    var body: some View {
        OnboardingQuestionView(
            title: "What is your height and weight?",
            subtitle: Constants.Messages.customPlan,
            onBack: { router.pop() }
        ) {
            HStack {
                Picker("Height", selection: $selectedHeight) {
                    ForEach(heights, id: \.self) { height in
                        Text("\(height) cm").tag(height)
                            .font(.picker)
                    }
                }
                .pickerStyle(.wheel)
                
                Picker("Weight", selection: $selectedWeight) {
                    ForEach(weights, id: \.self) { weight in
                        Text("\(weight) kg").tag(weight)
                            .font(.picker)
                    }
                }
                .pickerStyle(.wheel)
            }
            .frame(height: Constants.Height.wheelPicker)
            .padding(.bottom, Constants.Padding.large)
            
            AppButton(label: "Continue", type: .primary) {
                router.navigateToDateOfBirth()
            }
        }
    }
}


#Preview {
    HeightAndWeightView()
        .withRouter()
}
