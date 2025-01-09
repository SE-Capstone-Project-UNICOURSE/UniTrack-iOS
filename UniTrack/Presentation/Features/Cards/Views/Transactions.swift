//
//  Transactions.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct Transactions: View {
    var body: some View {
        Section {
            IconTextButton(icon: Icons.transactionsIcon, iconBackground: Color(.systemIndigo), title: "Transactions", bodyText: "You can view all transactions", doesHaveAButton: false, buttonText: "", doesHaveAToggle: false)
                .hideSeparators(insets: EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16), rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct Transactions_Previews: PreviewProvider {
    static var previews: some View {
        Transactions()
    }
}
