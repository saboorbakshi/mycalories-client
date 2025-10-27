//
//  DateOfBirthView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-27.
//

import SwiftUI

struct DateOfBirthView: View {
    @Environment(Router.self) var router
    @State private var selectedDay = 15
    @State private var selectedMonth = 6
    @State private var selectedYear = 2000
    
    let days = Array(1...31)
    let months = [
        (1, "January"), (2, "February"), (3, "March"), (4, "April"),
        (5, "May"), (6, "June"), (7, "July"), (8, "August"),
        (9, "September"), (10, "October"), (11, "November"), (12, "December")
    ]
    var years = Array(1900...2020)
    
    var body: some View {
        VStack(alignment: .leading, spacing: Constants.Spacing.small) {
            Text("What is your date of birth?")
                .font(Font.questionTitle)
                .padding(.top)
            
            Text(Constants.Messages.customPlan)
                .font(Font.questionSubtitle)
                .foregroundColor(.foregroundSecondary)
            
            Spacer()
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .safeAreaInset(edge: .bottom) {
            VStack {
                HStack(spacing: 0) {
                    // Day Picker
                    Picker("Day", selection: $selectedDay) {
                        ForEach(days, id: \.self) { day in
                            Text("\(day)")
                                .tag(day)
                        }
                    }
                    .pickerStyle(.wheel)
                    
                    // Month Picker
                    Picker("Month", selection: $selectedMonth) {
                        ForEach(months, id: \.0) { month in
                            Text(month.1)
                                .tag(month.0)
                        }
                    }
                    .pickerStyle(.wheel)
                    
                    // Year Picker
                    Picker("Year", selection: $selectedYear) {
                        ForEach(years, id: \.self) { year in
                            Text("\(year)")
                                .tag(year)
                        }
                        .environment(\.locale, Locale(identifier: "en_US_POSIX"))
                    }
                    .pickerStyle(.wheel)
                }
                .frame(height: 200)
                .padding(.bottom, Constants.Spacing.large)
                
                AppButton(label: "Continue", type: .primary) {
                    router.navigateToGoal()
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
    DateOfBirthView()
        .withRouter()
}
