//
//  AccountView.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct AccountView: View {
    @Environment(\.presentationMode) var present
    @State var accountInformationItems = accountInformation
    var body: some View {
        NavigationView {
            List {
                InformationSection()
                AccountQuickActionsSection()
            }
            .overlay(button)
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("$20,891", displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                dismiss()
            }) {
                TertiaryButton(text: "Cancel", fontWeight: .regular)
            }, trailing: Button(action: {
                dismiss()
                hapticFeedback(feedbackType: .success)
            }) {
                TertiaryButton(text: "Done", fontWeight: .semibold)
            })
        }
    }
    func dismiss() {
        present.wrappedValue.dismiss()
    }
    var button: some View {
        VStack(spacing: 0) {
            Spacer()
            HStack(spacing: 0) {
                Spacer()
                Button(action: {
                    //TODO here
                }) {
                    PrimaryButton(icon: Icons.plusBackgroundIcon, text: "Top up balance", textColor: Color.white, backgroundColor: Color(.systemIndigo))
                }
                .frame(height: 50)
            }
        }
        .padding(.bottom, 16)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
