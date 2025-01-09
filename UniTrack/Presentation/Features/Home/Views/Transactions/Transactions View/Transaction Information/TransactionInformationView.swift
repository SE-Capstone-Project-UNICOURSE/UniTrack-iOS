//
//  TransactionInformationView.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct TransactionInformationView: View {
    @Environment(\.presentationMode) var present
    var body: some View {
        NavigationView {
            List {
                Information()
                TransactionActions()
                Location()
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("$59.99", displayMode: .inline)
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
}

struct TransactionInformationView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionInformationView()
    }
}
