//
//  SearchResultsList.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct SearchResultsList: View {
    @State var transactionItems = transactionViewTransactions
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "8 Transactions Found", secondItem: "")) {
            ForEach(transactionItems, id: \.self) { transactionItem in
                TransactionViewTransactionItem(transactionItems: transactionItem)
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}
