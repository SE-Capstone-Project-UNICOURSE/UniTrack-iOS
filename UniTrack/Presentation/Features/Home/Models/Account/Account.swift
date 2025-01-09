//
//  Account.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

//This is a data model for accounts, you can change text, colors and many other things here if you wish.
struct Account: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var iconBackground: Color
    var balance: String
    var accountType: String
    var buttonText: String
}

var accounts = [
    Account(
        icon: Icons.cardIcon,
        iconBackground: Color(.systemIndigo),
        balance: "$20,891",
        accountType: "Platinum checking *0891",
        buttonText: "View"),
    Account(
        icon: Icons.mailStackIcon,
        iconBackground: Color(.systemOrange),
        balance: "$4,346",
        accountType: "Everyday savings *1842",
        buttonText: "View"),
    Account(
        icon: Icons.mailStackIcon,
        iconBackground: Color(.systemGreen),
        balance: "$12,327",
        accountType: "Fixed term savings *0216",
        buttonText: "View"),
    Account(
        icon: Icons.buildingIcon,
        iconBackground: Color(.systemYellow),
        balance: "$209,871",
        accountType: "Mortgage *3409",
        buttonText: "View")
]
