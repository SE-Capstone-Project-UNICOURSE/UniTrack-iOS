//
//  MortgageAccounts.swift
//  Finance
//
//  Created by UI8 on 21/10/2020.
//

import SwiftUI

struct MortgageAccounts: View {
    @State var accountItems = accounts
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Mortgage", secondItem: "$209,871")) {
            AccountItem(accountItem: accountItems[3])
                .hideSeparators(insets: EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16), rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct MortgageAccounts_Previews: PreviewProvider {
    static var previews: some View {
        MortgageAccounts()
    }
}
