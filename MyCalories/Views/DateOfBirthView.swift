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
    
    private let days = Array(1...31)
    private let months = [
        (1, "January"), (2, "February"), (3, "March"), (4, "April"),
        (5, "May"), (6, "June"), (7, "July"), (8, "August"),
        (9, "September"), (10, "October"), (11, "November"), (12, "December")
    ]
    private let years = Array(1900...2020)
    
    var body: some View {
        OnboardingQuestionView(
            title: "What is your date of birth?",
            subtitle: Constants.Messages.customPlan,
            filledCount: 7,
            onBack: { router.pop() }
        ) {
            HStack {
                // Day Picker
                Picker("Day", selection: $selectedDay) {
                    ForEach(days, id: \.self) { day in
                        Text("\(day)").tag(day)
                            .font(.picker)
                    }
                }
                .pickerStyle(.wheel)
                
                // Month Picker
                Picker("Month", selection: $selectedMonth) {
                    ForEach(months, id: \.0) { month in
                        Text(month.1).tag(month.0)
                            .font(.picker)
                    }
                }
                .pickerStyle(.wheel)
                
                // Year Picker
                Picker("Year", selection: $selectedYear) {
                    ForEach(years, id: \.self) { year in
                        Text("\(year)").tag(year)
                            .font(.picker)
                    }
                }
                .pickerStyle(.wheel)
                .environment(\.locale, Locale(identifier: "en_US_POSIX"))
            }
            .frame(height: Constants.Height.wheelPicker)
            .padding(.bottom, Constants.Padding.large)
            
            AppButton(label: "Continue", type: .primary) {
                router.navigateToWeightGoal()
            }
        }
    }
}

#Preview {
    DateOfBirthView()
        .withRouter()
}
