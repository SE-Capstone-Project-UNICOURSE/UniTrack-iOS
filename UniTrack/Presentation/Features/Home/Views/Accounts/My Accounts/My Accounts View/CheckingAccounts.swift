//
//  CheckingAccounts.swift
//  Finance
//
//  Created by UI8 on 21/10/2020.
//

import SwiftUI

struct CheckingAccounts: View {
    @State var accountItems = accounts
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Checking", secondItem: "$20,891")) {
            AccountItem(accountItem: accountItems[0])
                .hideSeparators(insets: EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16), rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct CheckingAccounts_Previews: PreviewProvider {
    static var previews: some View {
        CheckingAccounts()
    }
}
