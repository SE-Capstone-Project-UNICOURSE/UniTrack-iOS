//
//  SeptemberTransactions.swift
//  Finance
//
//  Created by UI8 on 21/10/2020.
//

import SwiftUI

struct SeptemberTransactions: View {
    @State var transactionItems = transactionViewTransactions
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "30 Sep 2020", secondItem: "- $265")) {
            VStack(spacing: 20) {
                TransactionViewTransactionItem(transactionItems: transactionItems[6])
                TransactionViewTransactionItem(transactionItems: transactionItems[7])
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct SeptemberTransactions_Previews: PreviewProvider {
    static var previews: some View {
        SeptemberTransactions()
    }
}
