//
//  ViewRouter.swift
//  Finance
//
//  Created by UI8 on 09/10/2020.
//

import SwiftUI

class ViewRouter: ObservableObject {
    // View Router that is responsible for showing the right view if the user has already opened the app once.
    @Published var currentView: String = "onboardingView"
//    init() {
//        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
//            UserDefaults.standard.set(true, forKey: "didLaunchBefore")
//            currentView = "onboardingView"
//        } else {
//            currentView = "tabBarView"
//        }
//    }
}
