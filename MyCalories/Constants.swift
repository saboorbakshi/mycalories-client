//
//  Constants.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

enum Constants {
    enum Padding {
        
    }
    
    enum Radius {
        static let full: CGFloat = 999
        static let medium: CGFloat = 16
    }
    
    enum Height {
        static let button: CGFloat = 54
    }
}

extension Font {
    static let button = Font.system(size: 18, weight: Font.Weight.medium)
    static let option = Font.system(size: 18, weight: Font.Weight.medium)
    static let title = Font.system(size: 24, weight: Font.Weight.semibold)
}

extension Color {
    static let background = SwiftUI.Color(red: 255/255, green: 255/255, blue: 255/255)
    static let buttonBackground = SwiftUI.Color(red: 0/255, green: 0/255, blue: 0/255)
    static let secondarybackground = SwiftUI.Color(red: 247/255, green: 247/255, blue: 247/255)
    static let foreground = SwiftUI.Color(red: 0/255, green: 0/255, blue: 0/255)
    static let buttonForeground = SwiftUI.Color(red: 255/255, green: 255/255, blue: 255/255)
}
