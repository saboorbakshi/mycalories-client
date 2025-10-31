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
            showButton: true,
            setPadding: false
        ) {
            VStack(spacing: Constants.Spacing.large * 2) {
                Avatars()
                
                Text("""
                     MyCalories was made
                     for people like you
                     """)
                    .font(Font.questionTitle)
                    .multilineTextAlignment(.center)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ReviewCard(
                            title: "10/10 app",
                            review: "\"This app makes calorie tracking a joy. So simple to use, made me fall in love.\"",
                            author: "Faisal"
                        )
                        
                        ReviewCard(
                            title: "I love this app",
                            review: "\"I've tried many apps, but this one stands out. Beautiful UI and accurate results!\"",
                            author: "Safaa"
                        )
                        
                        ReviewCard(
                            title: "A delight to use",
                            review: "\"So intuitive and fast — tracking my meals has never been simpler and easier.\"",
                            author: "Yusuf"
                        )
                    }
                    .padding(.horizontal)
                }
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
            .padding(.bottom, Constants.Padding.large)
        }
    }
    
    struct Avatars: View {
        private let imageNames = ["avatar", "avatar", "avatar", "avatar", "avatar"]
        
        var body: some View {
            HStack(spacing: -12) {
                ForEach(imageNames, id: \.self) { name in
                    Image(name)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(.backgroundPrimary, lineWidth: 3)
                        )
                }
            }
            .padding(.horizontal)
        }
    }
    
    
    struct ReviewCard: View {
        let title: String
        let review: String
        let author: String
        
        var body: some View {
            VStack(alignment: .leading, spacing: 6) {
                StarRatingView()
                    .padding(.bottom, 8)
                
                Text(title)
                    .font(Font.custom("SuisseIntl-Medium", size: 20))
                
                Text(review)
                    .font(Font.custom("SuisseIntl-Regular", size: 16))
                    .foregroundColor(.foregroundSecondary)
                
                Text(author)
                    .font(Font.custom("SuisseIntl-Regular", size: 16))
                    .padding(.top, 4)
            }
            .padding()
            .frame(width: 300, alignment: .leading)
            .background(Color.backgroundSecondary)
            .clipShape(RoundedRectangle(cornerRadius: 24))
        }
    }

    struct StarRatingView: View {
        var body: some View {
            HStack(spacing: 2) {
                ForEach(0..<5, id: \.self) { _ in
                    Star()
                        .fill(.yellow)
                        .frame(width: 24, height: 24)
                }
            }
        }
    }
}


#Preview {
    RatingView()
        .withRouter()
}
