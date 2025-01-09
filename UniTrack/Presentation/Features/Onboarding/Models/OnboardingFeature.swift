//
//  OnboardingFeature.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

//This is a data model for onboarding feature items, you can change text, colors and many other things here if you wish.
struct OnboardingFeature: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var iconBackground: Color
    var title: String
    var bodyText: String
}

var onboardingFeatures = [
    OnboardingFeature(
        icon: Icons.pieChartIcon,
        iconBackground: Color(.systemIndigo),
        title: "Advanced analytics",
        bodyText: "See and track how you manage all your finances in real time."),
    OnboardingFeature(
        icon: Icons.paperPlaneIcon,
        iconBackground: Color(.systemOrange),
        title: "Push notifications",
        bodyText: "Get notified every time you make a purchase or when someone sends you the money."),
    OnboardingFeature(
        icon: Icons.chartXaxisIcon,
        iconBackground: Color(.systemGreen),
        title: "Savings goals",
        bodyText: "Set up your savings goals and see how you are going to accomplish them."),
    OnboardingFeature(
        icon: Icons.stackIcon,
        iconBackground: Color(.systemYellow),
        title: "Spending categories",
        bodyText: "See what expense categories you are spending your money on the most."),
]
