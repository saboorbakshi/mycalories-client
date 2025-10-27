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
        VStack(alignment: .leading, spacing: Constants.Spacing.small) {
            Text("What is your height and weight?")
                .font(Font.questionTitle)
                .padding(.top)
            
            Text(Constants.Messages.customPlan)
             .font(Font.questionSubtitle)
             .foregroundColor(.secondaryForeground)
            
            Spacer()
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .safeAreaInset(edge: .bottom) {
            VStack {
                HStack(spacing: 0) {
                    // Height Picker
                    Picker("Height", selection: $selectedHeight) {
                        ForEach(heights, id: \.self) { height in
                            Text("\(height) cm")
                                .tag(height)
                        }
                    }
                    .pickerStyle(.wheel)
                    
                    // Weight Picker
                    Picker("Weight", selection: $selectedWeight) {
                        ForEach(weights, id: \.self) { weight in
                            Text("\(weight) kg")
                                .tag(weight)
                        }
                    }
                    .pickerStyle(.wheel)
                }
                .frame(height: 200)
                .padding(.bottom, Constants.Spacing.large)
                
                AppButton(label: "Continue", type: .primary) {
                    router.navigateToDateOfBirth()
                }
            }
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
    HeightAndWeightView()
        .withRouter()
}
