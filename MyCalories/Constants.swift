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
    enum Spacing {
        static let optionButton: CGFloat = 12
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
        static let iconButton: CGFloat = 40
    }
}

extension Font {
    static let icon = Font.system(size: 16, weight: Font.Weight.semibold)
    static let button = Font.system(size: 18, weight: Font.Weight.medium)
    static let optionButton = Font.system(size: 18, weight: Font.Weight.medium)
    static let heading = Font.system(size: 34, weight: Font.Weight.bold)
    static let subHeading = Font.system(size: 18, weight: Font.Weight.regular)
}

extension Color {
    init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0

        self.init(red: r, green: g, blue: b)
    }
}

extension Color {
    static let background = Color(hex: "#FFFFFF")
    static let buttonBackground = Color(hex: "#000000")
    static let secondaryBackground = Color(hex: "#F7F7F7")
    static let foreground = Color(hex: "#000000")
    static let secondaryForeground = Color(hex: "#555555")
    static let tertiaryForeground = Color(hex: "#888888")
    static let buttonForeground = Color(hex: "#FFFFFF")
}
