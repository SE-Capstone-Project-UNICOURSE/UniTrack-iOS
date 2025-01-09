//
//  OctoberTransactions.swift
//  Finance
//
//  Created by UI8 on 21/10/2020.
//

import SwiftUI

struct OctoberTransactions: View {
    @State var transactionItems = transactionViewTransactions
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "3 Oct 2020", secondItem: "- $1775.88")) {
            VStack(spacing: 20) {
                TransactionViewTransactionItem(transactionItems: transactionItems[1])
                TransactionViewTransactionItem(transactionItems: transactionItems[2])
                TransactionViewTransactionItem(transactionItems: transactionItems[3])
                TransactionViewTransactionItem(transactionItems: transactionItems[4])
                TransactionViewTransactionItem(transactionItems: transactionItems[5])
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct OctoberTransactions_Previews: PreviewProvider {
    static var previews: some View {
        OctoberTransactions()
    }
}
