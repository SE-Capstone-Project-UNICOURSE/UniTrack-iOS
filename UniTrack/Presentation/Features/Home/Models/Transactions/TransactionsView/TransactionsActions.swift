//
//  TransactionsActions.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

//This is a data model for transaction actions, you can change text, colors and many other things here if you wish.
struct TransactionsActions: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var iconBackground: Color
    var title: String
    var bodyText: String
    var doesHaveAButton: Bool
}

var transactionActions = [
    TransactionsActions(
        icon: Icons.receiptIcon,
        iconBackground: Color(.systemIndigo),
        title: "Digital receipt",
        bodyText: "View your invoice here",
        doesHaveAButton: true),
    TransactionsActions(
        icon: Icons.twoGearsIcon,
        iconBackground: Color(.systemOrange),
        title: "Request a refund",
        bodyText: "You can request a refund now",
        doesHaveAButton: false),
    TransactionsActions(
        icon: Icons.exclamationMarkIcon,
        iconBackground: Color(.systemGreen),
        title: "Report a problem",
        bodyText: "Please tell us what happened",
        doesHaveAButton: false)
]
