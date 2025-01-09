//
//  PaymentForm.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct PaymentForm: View {
    @Environment(\.presentationMode) var present
    @State var beneficiaryName = ""
    @State var routingNumber = ""
    @State var accountNumber = ""
    @State var amount = ""
    @State var selectedAccount: SelectAccount = .first
    @State var message = ""
    var body: some View {
        //This a payment form. You can change what input fields it has and their content here.
        Form {
            Section(header: Text("Beneficiary Name")) {
                TextField("Beneficiary name", text: $beneficiaryName)
            }
            Section(header: Text("Routing Number")) {
                TextField("XXX - XXXXXX", text: $routingNumber)
            }
            Section(header: Text("Account Number")) {
                TextField("XXX - XXXXXX", text: $accountNumber)
            }
            Section(header: Text("Amount")) {
                TextField("$40,75", text: $amount)
            }
            Section(header: Text("Funding source")) {
                Picker("Select account", selection: $selectedAccount) {
                    ForEach(SelectAccount.allCases, id: \.self) { account in
                        HStack(spacing: 12) {
                            Image(systemName: account.icon)
                                .font(.system(size: 13, weight: .medium, design: .default))
                                .foregroundColor(.white)
                                .frame(width: 30, height: 30)
                                .background(account.color)
                                .clipShape(Circle())
                            Text(account.accountNumber)
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(.primary)
                        }
                        .tag(account)
                    }
                }
            }
            Section(header: Text("Message")) {
                TextField("Message", text: $message)
            }
        }
    }
}

struct PaymentForm_Previews: PreviewProvider {
    static var previews: some View {
        PaymentForm()
    }
}
