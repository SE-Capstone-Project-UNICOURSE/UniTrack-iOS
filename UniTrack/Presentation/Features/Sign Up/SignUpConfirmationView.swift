//
//  SignUpConfirmationView.swift
//  Finance
//
//  Created by UI8 on 26/10/2020.
//

import SwiftUI

struct SignUpConfirmationView: View {
    @Environment (\.presentationMode) var present
    @State var isLoading = false
    @Binding var showHome: Bool
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground).edgesIgnoringSafeArea(.all)
            if isLoading {
                ProgressView("Loading....")
            } else {
                VStack(spacing: 0) {
                    Spacer()
                    information
                    Spacer()
                    button
                }
            }
        }
    }
    var information: some View {
        VStack(alignment: .leading, spacing: 15) {
            Image(Images.onboardingIcon3)
                .renderingMode(.original)
                .padding(.bottom, 15)
            Text("You have successfully signed up")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            Text("Start using our amazing services now and explore all the features that we offer.")
                .font(.body)
                .foregroundColor(.secondary)
        }
        .frame(width: UIScreen.main.bounds.width-32)
    }
    var button: some View {
        Button(action: {
            self.isLoading.toggle()
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                self.showHome.toggle()
                dismiss()
            }
        }) {
            PrimaryButton(icon: Icons.boltIcon, text: "Get started", textColor: Color.white, backgroundColor: Color(.systemIndigo))
        }
        .frame(height: 50)
        .padding(.bottom, 16)
    }
    func dismiss() {
        present.wrappedValue.dismiss()
    }
}
