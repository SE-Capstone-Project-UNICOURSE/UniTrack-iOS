//
//  SavingsAccounts.swift
//  Finance
//
//  Created by UI8 on 21/10/2020.
//

import SwiftUI

struct SavingsAccounts: View {
    @State var accountItems = accounts
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Savings", secondItem: "$16,673")) {
            VStack(spacing: 20) {
                AccountItem(accountItem: accountItems[1])
                AccountItem(accountItem: accountItems[2])
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct SavingsAccounts_Previews: PreviewProvider {
    static var previews: some View {
        SavingsAccounts()
    }
}
