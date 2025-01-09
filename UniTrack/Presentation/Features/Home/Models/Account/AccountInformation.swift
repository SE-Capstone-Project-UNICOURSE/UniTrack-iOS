//
//  AccountInformation.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

//This is a data model for account information, you can change text, colors and many other things here if you wish.
struct AccountInformation: Identifiable, Hashable {
    var id = UUID()
    var firstItem: String
    var secondItem: String
    var secondItemTextcolor: Color
}

var accountInformation = [
    AccountInformation(
        firstItem: "Routing number",
        secondItem: "123 - 089735",
        secondItemTextcolor: Color.primary),
    AccountInformation(
        firstItem: "Account number",
        secondItem: "005793 - 345",
        secondItemTextcolor: Color.primary),
    AccountInformation(
        firstItem: "Standing",
        secondItem: "Good",
        secondItemTextcolor: Color(.systemGreen)),
    AccountInformation(
        firstItem: "Overdraft limit",
        secondItem: "$2350",
        secondItemTextcolor: Color(.systemRed)),
    AccountInformation(
        firstItem: "Date opened",
        secondItem: "15 May 2020, 10:03 AM",
        secondItemTextcolor: Color.primary)
]
