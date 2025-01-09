//
//  ContentView.swift
//  Finance
//
//  Created by UI8 on 09/10/2020.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewRouter: ViewRouter
    var body: some View {
        //Onboarding is going to be shown only if the app is being opened for the first time. You can change it by replacing the code below with the view that you would like the app to launch first.
        VStack(spacing: 0) {
            if viewRouter.currentView == "onboardingView" {
                OnboardingView()
            }
            else if viewRouter.currentView == "tabBarView" {
                TabBarView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
