//
//  TodayTransactions.swift
//  Finance
//
//  Created by UI8 on 21/10/2020.
//

import SwiftUI

struct TodayTransactions: View {
    @State var transactionItems = transactionViewTransactions
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Today", secondItem: "+ $3500")) { TransactionViewTransactionItem(transactionItems: transactionItems[0])
            .hideSeparators(insets: EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16), rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct TodayTransactions_Previews: PreviewProvider {
    static var previews: some View {
        TodayTransactions()
    }
}
