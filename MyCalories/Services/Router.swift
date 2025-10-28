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
    
    func navigateToNumWorkouts() {
        path.append(Route.numWorkouts)
    }
    
    func navigateToDiscovery() {
        path.append(Route.discovery)
    }
    
    func navigateToTrialHistory() {
        path.append(Route.trialHistory)
    }
    
    func navigateToLongTermResults() {
        path.append(Route.longTermResults)
    }
    
    func navigateToHeightAndWeight() {
        path.append(Route.heightAndWeight)
    }
    
    func navigateToDateOfBirth() {
        path.append(Route.dateOfBirth)
    }
    
    func navigateToGoal() {
        path.append(Route.goal)
    }
    
    func navigateToTargetWeight() {
        path.append(Route.targetWeight)
    }
    
    func navigateToNotHardAtAll() {
        path.append(Route.notHardAtAll)
    }
    
    func navigateToPace() {
        path.append(Route.pace)
    }
    
    func navigateToObstacle() {
        path.append(Route.obstacle)
    }
    
    func navigateToPotential() {
        path.append(Route.potential)
    }
    
    func navigateToThankYou() {
        path.append(Route.thankYou)
    }
    
    func navigateToRating() {
        path.append(Route.rating)
    }
    
    func navigateToNotifications() {
        path.append(Route.notifications)
    }
    
    func navigateToGeneratePlan() {
        path.append(Route.generatePlan)
    }
    
    func navigateToSettingUpPlan() {
        path.append(Route.settingUpPlan)
    }
    
    func navigateToPlanDetails() {
        path.append(Route.planDetails)
    }
    
    func navigateToSaveProgress() {
        path.append(Route.saveProgress)
    }
    
    func navigateToPaywall() {
        path.append(Route.paywall)
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func pop() {
        path.removeLast()
    }
}


enum Route {
    case gender //
    case numWorkouts //
    case discovery //
    case trialHistory //
    case longTermResults // 4
    case heightAndWeight //
    case dateOfBirth //
    case goal //
    case targetWeight // 1
    case notHardAtAll  // 2
    case pace // 3
    case obstacle //
    case potential // 5
    case thankYou // 6
    case rating // 7
    case notifications // 8
    case generatePlan
    case settingUpPlan
    case planDetails
    case saveProgress
    case paywall
}
