//
//  Onboarding.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

//This is a data model for onboarding views, you can change text, colors and many other things here if you wish.
struct Onboarding: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var title: String
    var bodyText: String
    var currentView: Int
    var primaryButtonIcon: String
    var primaryButtonText: String
    var primaryButtonColor: Color
    var tertiaryButtonText: String
}

var onboarding = [
    Onboarding(
        image: Images.onboardingIcon1,
        title: "Welcome to the future of finance",
        bodyText: "Apply for one of our powerful checking or savings accounts today.",
        currentView: 1,
        primaryButtonIcon: Icons.boltIcon,
        primaryButtonText: "Get started",
        primaryButtonColor: Color(.systemIndigo),
        tertiaryButtonText: "I already have an account"),
    Onboarding(
        image: Images.onboardingIcon2,
        title: "Start managing your money better",
        bodyText: "Our banking services will help you start manage your money better.",
        currentView: 2,
        primaryButtonIcon: Icons.boltIcon,
        primaryButtonText: "Get started",
        primaryButtonColor: Color(.systemIndigo),
        tertiaryButtonText: "I already have an account")
]
