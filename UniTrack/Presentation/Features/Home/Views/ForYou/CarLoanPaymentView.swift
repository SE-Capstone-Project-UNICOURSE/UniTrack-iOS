//
//  CarLoanPaymentView.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct CarLoanPaymentView: View {
    @Environment(\.presentationMode) var present
    @State var loanInformationItems = loanInformation
    var body: some View {
        NavigationView {
            List {
                PaymentInformationSection()
                SomethingWrongSection()
                YourLoanSection()
            }
            .listStyle(InsetGroupedListStyle())
            .overlay(button)
            .navigationBarTitle("Car loan payment", displayMode: .inline)
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
    var button: some View {
        VStack(spacing: 0) {
            Spacer()
            Button(action: {
                //TODO here
            }) {
                PrimaryButton(icon: Icons.cardIcon, text: "Confirm payment", textColor: Color.white, backgroundColor: Color(.systemIndigo))
            }
            .frame(height: 50)
        }
        .padding(.bottom, 16)
    }
    func dismiss() {
        present.wrappedValue.dismiss()
    }
}

struct CarLoanPaymentView_Previews: PreviewProvider {
    static var previews: some View {
        CarLoanPaymentView()
    }
}
