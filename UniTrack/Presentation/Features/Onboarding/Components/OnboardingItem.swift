//
//  OnboardingItem.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

struct OnboardingItem: View {
    var onboardingItem: Onboarding
    @State var features = onboardingFeatures
    @State var showSignUp = false
    var body: some View {
        // This is nboarding item, you can modify the way it looks like from here if you wish.
        VStack(alignment: .leading, spacing: 30) {
            Image(onboardingItem.image)
                .renderingMode(.original)
            VStack(alignment: .leading, spacing: 15) {
                Text(onboardingItem.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Text(onboardingItem.bodyText)
                    .font(.body)
                    .foregroundColor(.secondary)
            }
            VStack(alignment: .leading, spacing: 20) {
                if onboardingItem.currentView == 1 {
                    OnboardingFeatureItem(onboardingFeature: features[0])
                    OnboardingFeatureItem(onboardingFeature: features[1])
                } else {
                    OnboardingFeatureItem(onboardingFeature: features[2])
                    OnboardingFeatureItem(onboardingFeature: features[3])
                }
            }

            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 32)
    }
}
