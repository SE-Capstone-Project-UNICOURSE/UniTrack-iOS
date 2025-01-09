//
//  PaymentDetailsView.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct PaymentDetailsView: View {
    @Environment(\.presentationMode) var present
    var body: some View {
        NavigationView {
            PaymentForm()
                .navigationBarTitle("Payment details", displayMode: .inline)
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

struct PaymentDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentDetailsView()
    }
}
