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
        
    private func OnboardingRouteView(for onboardingRoute: OnboardingRoute) -> some View {
        Group {
            switch onboardingRoute {
            case .gender:
                GenderView()
            case .numWorkouts:
                NumberOfWorkoutsView()
            case .discovery:
                DiscoveryView()
            case .trialHistory:
                TrialHistoryView()
            case .weightGoal:
                WeightGoalView()
            case .obstacle:
                ObstacleView()
            case .accomplish:
                AccomplishView()
            case .heightAndWeight:
                HeightAndWeightView()
            case .dateOfBirth:
                DateOfBirthView()
            case .targetWeight:
                TargetWeightView()
            case .realisticTarget:
                RealisticTargetView()
            case .pace:
                PaceView()
            case .twiceAsMuch:
                TwiceAsMuchView()
            case .thankYou:
                ThankYouView()
            case .rating:
                RatingView()
            case .generatePlan:
                GeneratePlanView()
            case .settingUpPlan:
                SettingUpPlanView()
            case .planDetails:
                PlanDetailsView()
            case .signUp:
                SignUpView()
            }
        }
        .environment(router)
        .environment(\.currentOnboardingIndex, OnboardingRoute.allCases.firstIndex(of: onboardingRoute)!)
    }
    
    func body(content: Content) -> some View {
        NavigationStack(path: $router.path) {
            content
                .environment(router)
                .navigationDestination(for: OnboardingRoute.self) { OnboardingRoute in
                    OnboardingRouteView(for: OnboardingRoute)
                }
        }
    }
}

extension View {
    func withRouter() -> some View {
        modifier(RouteViewModifier())
    }
}
