//
//  SpendingCategory.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

//This is a data model for spending categories, you can change text, colors and many other things here if you wish.
struct SpendingCategory: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var iconBackground: Color
    var title: String
    var description: String
    var amount: String
    var additionalDescription: String
    var fullAmount: String
    var progress: CGFloat
}

var categories = [
    SpendingCategory(
        icon: Icons.bagIcon,
        iconBackground: Color(.systemIndigo),
        title: "Groceries",
        description: "23 Transactions",
        amount: "$408.23",
        additionalDescription: "You are getting close to your target",
        fullAmount: "$450.00",
        progress: 90.0
        ),
    SpendingCategory(
        icon: Icons.gearIcon,
        iconBackground: Color(.systemOrange),
        title: "Utilities",
        description: "4 Transactions",
        amount: "$156.03",
        additionalDescription: "There are a few other bills due this month",
        fullAmount: "$220.00",
        progress: 60.0),
    SpendingCategory(
        icon: Icons.imagesIcons,
        iconBackground: Color(.systemGreen),
        title: "Entertainment",
        description: "8 Transactions",
        amount: "$96.44",
        additionalDescription: "You can put some money aside if you wish",
        fullAmount: "$200.00",
        progress: 50.0),
    SpendingCategory(
        icon: Icons.cartIcon,
        iconBackground: Color(.systemYellow),
        title: "Shopping",
        description: "6 Transactions",
        amount: "$276.39",
        additionalDescription: "You have still got a lot to spend left",
        fullAmount: "$525.00",
        progress: 50.0),
    SpendingCategory(
        icon: Icons.repeatIcon,
        iconBackground: Color(.systemPurple),
        title: "Subscriptions",
        description: "7 Transactions",
        amount: "$31.57",
        additionalDescription: "All subscriptions have been paid this month",
        fullAmount: "$75.00",
        progress: 35.0),
    SpendingCategory(
        icon: Icons.bagIcon,
        iconBackground: Color(.systemTeal),
        title: "Other",
        description: "2 Transactions",
        amount: "$14.86",
        additionalDescription: "Yur are halfway through your budget",
        fullAmount: "$30.00",
        progress: 50.0)
]
