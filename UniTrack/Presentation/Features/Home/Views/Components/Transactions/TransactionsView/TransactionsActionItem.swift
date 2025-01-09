//
//  TransactionsActionItem.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct TransactionsActionItem: View {
    var transactionAction: TransactionsActions
    var body: some View {
        //This is transaction action item, you can modify the way it looks like from here if you wish.
        IconTextButton(icon: transactionAction.icon, iconBackground: transactionAction.iconBackground, title: transactionAction.title, bodyText: transactionAction.bodyText, doesHaveAButton: transactionAction.doesHaveAButton, buttonText: "View", doesHaveAToggle: false)
    }
}
