//
//  EnvironmentKeys.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-30.
//

import Foundation
import SwiftUI

private struct CurrentOnboardingIndexKey: EnvironmentKey {
    static let defaultValue: Int = 0
}

extension EnvironmentValues {
    var currentOnboardingIndex: Int {
        get { self[CurrentOnboardingIndexKey.self] }
        set { self[CurrentOnboardingIndexKey.self] = newValue }
    }
}
