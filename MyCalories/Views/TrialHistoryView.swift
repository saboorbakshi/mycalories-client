//
//  TrialHistoryView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import SwiftUI

struct TrialHistoryView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Have you tired other calories tracking apps before?")
                .font(.heading)
            
            Spacer()
        }
        .padding(.top)
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .safeAreaInset(edge: .bottom) {
            VStack {
                OptionButton(label: "Yes", icon: .systemName("hand.thumbsup.fill"), color: Color.green) {
                    router.navigateToTrialHistory()
                }
                OptionButton(label: "No", icon: .systemName("hand.thumbsdown.fill"), color: Color.red) {
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
    TrialHistoryView()
        .withRouter()
}
