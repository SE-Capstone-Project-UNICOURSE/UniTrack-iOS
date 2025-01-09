//
//  TransactionViewTransactions.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

//This is a data model for TransactionView transaction items, you can change text, colors and many other things here if you wish.
struct TransactionViewTransactions: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
    var amount: String
    var amountColor: Color
    var doesHaveAnEmoji: Bool
    var doesHaveAnIcon: Bool
    var backgroundColor: Color
}
var transactionViewTransactions = [
    TransactionViewTransactions(
        image: "💵",
        title: "Salary Payment",
        description: "5 Oct 2020, 2:36 PM",
        amount: "+ $3500",
        amountColor: Color(.systemGreen),
        doesHaveAnEmoji: true,
        doesHaveAnIcon: false,
        backgroundColor: Color(.tertiarySystemFill)),
    TransactionViewTransactions(
        image: Images.logoDribbble,
        title: "Dribbble Pro",
        description: "Online purchase, 8:12 PM",
        amount: "- $59.99",
        amountColor: Color(.systemRed),
        doesHaveAnEmoji: false,
        doesHaveAnIcon: false,
        backgroundColor: .clear),
    TransactionViewTransactions(
        image: Images.profileImage3,
        title: "Transfer to John",
        description: "Thank you, 5:02 PM",
        amount: "- $20",
        amountColor: Color(.systemRed),
        doesHaveAnEmoji: false,
        doesHaveAnIcon: false,
        backgroundColor: .clear),
    TransactionViewTransactions(
        image: Icons.buildingIcon,
        title: "Mortgage Payment",
        description: "1:46 PM",
        amount: "- $1745",
        amountColor: Color(.systemRed),
        doesHaveAnEmoji: false,
        doesHaveAnIcon: true,
        backgroundColor: Color(.systemIndigo)),
    TransactionViewTransactions(
        image: Images.profileImage4,
        title: "Transfer from Leah",
        description: "Thanks for dinner, 11:57 AM",
        amount: "+ $50",
        amountColor: Color(.systemGreen),
        doesHaveAnEmoji: false,
        doesHaveAnIcon: false,
        backgroundColor: .clear),
    TransactionViewTransactions(
        image: Icons.mailStackIcon,
        title: "Spare change",
        description: "Everyday savings, 7:41 AM",
        amount: "- $0.89",
        amountColor: Color(.systemRed),
        doesHaveAnEmoji: false,
        doesHaveAnIcon: true,
        backgroundColor: Color(.systemOrange)),
    TransactionViewTransactions(
        image: "💵",
        title: "ATM withdrawal",
        description: "Great Street, 9:18 AM",
        amount: "- $250",
        amountColor: Color(.systemRed),
        doesHaveAnEmoji: true,
        doesHaveAnIcon: false,
        backgroundColor: Color(.tertiarySystemFill)),
    TransactionViewTransactions(
        image: Images.logoUI8,
        title: "UI8 LLC",
        description: "Online purchase, 1:34 AM",
        amount: "- $15",
        amountColor: Color(.systemRed),
        doesHaveAnEmoji: false,
        doesHaveAnIcon: false,
        backgroundColor: .clear)
]
