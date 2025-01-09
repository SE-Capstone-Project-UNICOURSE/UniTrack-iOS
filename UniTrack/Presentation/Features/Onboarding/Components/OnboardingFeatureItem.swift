//
//  OnboardingFeatureItem.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

struct OnboardingFeatureItem: View {
    var onboardingFeature: OnboardingFeature
    var body: some View {
        //This is onboarding feature item, you can modify the way it looks like from here if you wish.
        IconText(icon: onboardingFeature.icon, backgroundColor: onboardingFeature.iconBackground, title: onboardingFeature.title, bodyText: onboardingFeature.bodyText, doesHaveANavigationLink: true)
    }
}
