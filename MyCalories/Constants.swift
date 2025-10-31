//
//  Constants.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

enum Position {
    case top, bottom
}

enum Constants {
    static let appName = "MyCalories"
    
    enum Messages {
        static let customPlan = "This will be used to calibrate your custom plan."
    }
    
    enum Spacing {
        static let small: CGFloat = 8
        static let medium: CGFloat = 16
        static let large: CGFloat = 24
    }
    
    enum Padding {
        static let iconButtonTextInset: CGFloat = 12
        static let optionButtonShapeInset: CGFloat = 14
        static let optionButton: CGFloat = 10
        static let large: CGFloat = 24
    }
    
    enum Radius {
        static let full: CGFloat = 999
        static let medium: CGFloat = 16
        static let large: CGFloat = 24
    }
    
    enum Height {
        static let primaryButton: CGFloat = 56
        static let wheelPicker: CGFloat = 200
    }
    
    enum Size {
        static let optionButtonShape: CGFloat = 22
        static let iconButton: CGFloat = 40
    }
}

extension Font {
    static let tiny = Font.custom("SuisseIntl-Regular", size: 14)
    static let icon = Font.system(size: 16, weight: Font.Weight.medium)
    static let picker = Font.custom("SuisseIntl-Regular", size: 19)
    static let button = Font.custom("SuisseIntl-Medium", size: 17)
    static let optionButton = Font.custom("SuisseIntl-Regular", size: 17)
    static let questionTitle = Font.custom("SuisseIntl-SemiBold", size: 32)
    static let questionSubtitle = Font.custom("SuisseIntl-Regular", size: 17)
}
