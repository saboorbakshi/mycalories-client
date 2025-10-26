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
            case .trialHistory:
                TrialHistoryView()
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

