//
//  OnboardingOptionRoutesView.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-29.
//

import SwiftUI

struct OptionButtonInfo {
    let label: String
    let icon: OptionButtonIcon?
    let color: Color?
    
    init(
        label: String,
        icon: OptionButtonIcon? = nil,
        color: Color? = nil
    ) {
        self.label = label
        self.icon = icon
        self.color = color
    }
}

struct OptionButtonList: View {
    let options: [OptionButtonInfo]
    let action: () -> Void

    var body: some View {
        VStack(spacing: Constants.Spacing.medium) {
            ForEach(options.indices, id: \.self) { index in
                let option = options[index]
                OptionButton(
                    label: option.label,
                    icon: option.icon,
                    color: option.color
                ) {
                    action()
                }
            }
        }
    }
}
