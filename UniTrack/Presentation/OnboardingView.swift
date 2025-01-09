//
//  OnboardingView.swift
//  Finance
//
//  Created by UI8 on 09/10/2020.
//

import SwiftUI
import Pages

struct OnboardingView: View {
    @State var currentView = 0
    @State var onboardingItems = onboarding
    @State var showSignUp = false
    @State var showLogin = false
    var onboardingItem: Onboarding = onboarding[0]
    @State var showHome = false
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground).edgesIgnoringSafeArea(.all)
            VStack(spacing: 0) {
                Pages(currentPage: $currentView, navigationOrientation: .horizontal,hasControl: false) {
                    OnboardingItem(onboardingItem: onboardingItems[0])
                    OnboardingItem(onboardingItem: onboardingItems[1])
                }
                .padding(.bottom, 60)
                .overlay(butons)
            }
            if showHome {
                TabBarView()
            }
        }
    }
    var butons: some View {
        VStack(spacing: 0) {
            Spacer()
            HStack(spacing: 0) {
                Spacer()
                VStack(spacing: 15) {
                    Button(action: {
                        self.showSignUp.toggle()
                    }) {
                        PrimaryButton(icon: onboardingItem.primaryButtonIcon, text: onboardingItem.primaryButtonText, textColor:.white, backgroundColor: onboardingItem.primaryButtonColor)
                    }
                    .sheet(isPresented: $showSignUp) {
                        SignUpView(showHome: $showHome)
                    }
                    Button(action: {
                        self.showLogin.toggle()
                    }) {
                        TertiaryButton(text: onboardingItem.tertiaryButtonText, fontWeight: .semibold)
                    }
                    .sheet(isPresented: $showLogin) {
                        LoginView(showHome: $showHome)
                    }
                }
                .padding(.bottom, 16)
                .frame(height: 130)
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
