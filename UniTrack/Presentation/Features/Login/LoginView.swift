//
//  LoginView.swift
//  Finance
//
//  Created by UI8 on 26/10/2020.
//

import SwiftUI

struct LoginView: View {
    @Environment (\.presentationMode) var present
    @Binding var showHome: Bool
    var body: some View {
        NavigationView {
            LoginForm()
                .navigationBarTitle("Login", displayMode: .inline)
                .navigationBarItems(
                    leading:
                        Button(action: {
                    dismiss()
                }) {
                    TertiaryButton(text: "Cancel", fontWeight: .regular)
                },
                    trailing:
                        Button(action: {
                            dismiss()
                    self.showHome.toggle()
                    hapticFeedback(feedbackType: .success)
                        }) {
                        TertiaryButton(text: "Done", fontWeight: .semibold)
                        }
                )
        }
    }
    func dismiss() {
        present.wrappedValue.dismiss()
    }
}
