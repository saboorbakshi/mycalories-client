//
//  Router.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI
import Observation

@Observable
class Router {
    var path = NavigationPath()
    
    func navigateToGender() {
        path.append(Route.gender)
    }
    
    func navigateToTrialHistory() {
        path.append(Route.trialHistory)
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
}

enum Route {
    case gender
    case trialHistory
}
