//
//  Actions.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct TransactionActions: View {
    @State var transactionActionItems = transactionActions
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Actions", secondItem: "")) {
            ForEach(transactionActionItems, id: \.self) { transactionActionItem in
                TransactionsActionItem(transactionAction: transactionActionItem)
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor2)
        }
    }
}

struct TransactionActions_Previews: PreviewProvider {
    static var previews: some View {
        TransactionActions()
    }
}
