//
//  RouteViewModifier.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import Foundation
import SwiftUI

struct RouteViewModifier: ViewModifier {
    @State private var router = Router()
    
    private func routeView(for route: Route) -> some View {
        Group {
            switch route {
            case .gender:
                GenderView()
            case .numWorkouts:
                NumWorkoutsView()
            case .discovery:
                DiscoveryView()
            case .trialHistory:
                TrialHistoryView()
            case .longTermResults:
                LongTermResultsView()
            case .height:
                HeightView()
            case .weight:
                WeightView()
            case .dateOfBirth:
                DateOfBirthView()
            case .goal:
                GoalView()
            case .targetWeight:
                TargetWeightView()
            case .notHardAtAll:
                NotHardAtAllView()
            case .pace:
                PaceView()
            case .obstacle:
                ObstacleView()
            case .potential:
                PotentialView()
            case .thankYou:
                ThankYouView()
            case .rating:
                RatingView()
            case .notifications:
                NotificationsView()
            case .generatePlan:
                GeneratePlanView()
            case .settingUpPlan:
                SettingUpPlanView()
            case .planDetails:
                PlanDetailsView()
            case .saveProgress:
                SaveProgressView()
            case .paywall:
                PaywallView()
            }       
        }
        .environment(router)
    }
    
    func body(content: Content) -> some View {
        NavigationStack(path: $router.path) {
            content
                .environment(router)
                .navigationDestination(for: Route.self) { route in
                    routeView(for: route)
                }
        }
    }
}

extension View {
    func withRouter() -> some View {
        modifier(RouteViewModifier())
    }
}

