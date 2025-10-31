//
//  SignUpView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct SignUpView: View {
    @Environment(Router.self) var router
    
    var body: some View {
        OnboardingCenterView() {
            Text("""
                Sign up and save
                your progress
                """)
                .font(Font.questionTitle)
                .multilineTextAlignment(.center)
                .padding(.bottom)
            
            Button(action: {}) {
                HStack {
                    AppleLogo()
                        .fill(.foregroundButton)
                        .frame(width: 26, height: 26)
                    
                    Spacer()
                    
                    Text("Sign up with Apple")
                        .font(Font.button)
                    
                    Spacer()
                    
                    AppleLogo()
                        .frame(width: 26,height: 26)
                        .opacity(0)
                }
            }
            .padding(.horizontal)
            .frame(height: Constants.Height.primaryButton)
            .frame(maxWidth: .infinity)
            .background(.backgroundButton)
            .foregroundColor(.foregroundButton)
            .cornerRadius(Constants.Radius.full)
            .buttonStyle(ScaleButtonStyle())
            
            
            
        }
    }
}

#Preview {
    SignUpView()
        .withRouter()
}
