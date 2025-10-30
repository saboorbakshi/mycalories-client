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
    
    // create fillCount numbers here and next pg navigation too...
    
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
            case .heightAndWeight:
                HeightAndWeightView()
            case .dateOfBirth:
                DateOfBirthView()
            case .weightGoal:
                WeightGoalView()
            case .targetWeight:
                TargetWeightView()
            case .realisticTarget:
                RealisticTargetView()
            case .pace:
                PaceView()
            case .twiceAsMuch:
                TwiceAsMuchView()
            case .obstacle:
                ObstacleView()
            case .accomplish:
                AccomplishView()
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

