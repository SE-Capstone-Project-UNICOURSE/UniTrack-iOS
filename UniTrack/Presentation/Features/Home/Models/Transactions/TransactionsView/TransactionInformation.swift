//
//  TransactionInformation.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

//This is a data model for transaction information items, you can change text, colors and many other things here if you wish.
struct TransactionInformation: Identifiable, Hashable {
    var id = UUID()
    var firstItem: String
    var secondItem: String
    var secondItemTextColor: Color
}

var transactinInformation = [
    TransactionInformation(
        firstItem: "Status",
        secondItem: "Completed",
        secondItemTextColor: Color(.systemGreen)),
    TransactionInformation(
        firstItem: "Date",
        secondItem: "7 Oct 2020, 11:44 AM",
        secondItemTextColor: Color.primary),
    TransactionInformation(
        firstItem: "Merchant",
        secondItem: "Dribbble Holdings Ltd.",
        secondItemTextColor: Color.primary),
    TransactionInformation(
        firstItem: "Transaction ID",
        secondItem: "436 - 587 - 920",
        secondItemTextColor: Color.primary)
]
