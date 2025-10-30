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
    
    func navigateToHeightAndWeight() {
        path.append(Route.heightAndWeight)
    }
    
    func navigateToDateOfBirth() {
        path.append(Route.dateOfBirth)
    }
    
    func navigateToWeightGoal() {
        path.append(Route.weightGoal)
    }
    
    func navigateToTargetWeight() {
        path.append(Route.targetWeight)
    }
    
    func navigateToRealisticTarget() {
        path.append(Route.realisticTarget)
    }
    
    func navigateToPace() {
        path.append(Route.pace)
    }
    
    func navigateToTwiceAsMuch() {
        path.append(Route.twiceAsMuch)
    }
    
    func navigateToObstacle() {
        path.append(Route.obstacle)
    }
    
    func navigateToAccomplish() {
        path.append(Route.accomplish)
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
    case heightAndWeight //
    case dateOfBirth //
    case weightGoal //
    case targetWeight //
    case realisticTarget  //
    case pace //
    case twiceAsMuch // 1
    case obstacle //
    case accomplish //
    case thankYou //
    case rating // 3
    case notifications // 4
    case generatePlan
    case settingUpPlan // 5
    case planDetails // 6
    case saveProgress // 7
    case paywall // 8
}
