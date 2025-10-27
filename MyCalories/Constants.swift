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
    enum Messages {
        static let customPlan = "This will be used to calibrate your custom plan."
    }
    
    enum Spacing {
        static let small: CGFloat = 8
        static let large: CGFloat = 24
    }
    
    enum Padding {
        static let optionButtonShapeInset: CGFloat = 12
        static let optionButton: CGFloat = 12
    }
    
    enum Radius {
        static let full: CGFloat = 999
        static let medium: CGFloat = 16
    }
    
    enum Height {
        static let primaryButton: CGFloat = 56
    }
    
    enum Size {
        static let optionButtonShape: CGFloat = 22
        static let iconButton: CGFloat = 42
    }
}

extension Font {
    static let icon = Font.system(size: 16, weight: Font.Weight.medium)
    static let button = Font.system(size: 18, weight: Font.Weight.medium)
    static let optionButton = Font.system(size: 18, weight: Font.Weight.medium)
    static let questionTitle = Font.system(size: 34, weight: Font.Weight.bold)
    static let questionSubtitle = Font.system(size: 18, weight: Font.Weight.regular)
}
