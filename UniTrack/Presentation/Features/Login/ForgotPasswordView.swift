//
//  ForgotPasswordView.swift
//  Finance
//
//  Created by UI8 on 26/10/2020.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State var emailAddress = ""
    @State var showAlert = false
    @Binding var goBack: Bool
    var body: some View {
        Form {
            Section(header: Text("Email Address")) {
                TextField("Email address", text: $emailAddress)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
            }
        }
        .navigationTitle("Enter email address")
        .navigationBarItems(
            trailing:
                Button(action: {
                    self.showAlert.toggle()
                }) {
                    TertiaryButton(text: "Done", fontWeight: .semibold)
                }
        )
        .alert(isPresented: $showAlert) {
            Alert(
                title: Text(emailAddress.isEmpty ? "Invalid email address" : "Password reset link sent"),
                message: Text(emailAddress.isEmpty ? "Please make sure that you have entered your email address correctly" : "We have just sent you a password reset link to \(emailAddress)"),
                primaryButton:
                    .default(Text("Got it"), action: {
                        if !emailAddress.isEmpty {
                            self.goBack.toggle()
                        }
                    }),
                secondaryButton:
                    .cancel()
            )
        }
    }
}
