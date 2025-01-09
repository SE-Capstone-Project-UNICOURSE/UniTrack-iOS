//
//  SignUpView.swift
//  Finance
//
//  Created by UI8 on 09/10/2020.
//

import SwiftUI

struct SignUpView: View {
    @Environment(\.presentationMode) var present
    @Binding var showHome: Bool
    var body: some View {
        NavigationView {
            SignUpForm()
                .navigationBarTitle("Create an account", displayMode: .inline)
                .navigationBarItems(
                    leading:
                        Button(action: {
                    dismiss()
                        }) {
                            TertiaryButton(text: "Cancel", fontWeight: .regular)
                        },
                    trailing:
                        NavigationLink(
                            destination: SignUpConfirmationView(present: _present, showHome: $showHome)
                                .navigationBarHidden(true)
                        ) {
                            TertiaryButton(text: "Done", fontWeight: .semibold)
                        }
                )
        }
    }
    func dismiss() {
        present.wrappedValue.dismiss()
    }
}
