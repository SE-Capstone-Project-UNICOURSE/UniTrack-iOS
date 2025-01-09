//
//  HomeViewTransaction.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

//This is a data model for HomeView transaction items, you can change text, colors and many other things here if you wish.
struct HomeViewTransaction: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
    var amount: String
    var amountColor: Color
    var doesHaveAnEmoji: Bool
    var backgroundColor: Color
}

var transactions = [
    HomeViewTransaction(
        image: "💵",
        title: "Salary Payment",
        description: "5 Oct 2020, 2:36 PM",
        amount: "+ $3500",
        amountColor: Color(.systemGreen),
        doesHaveAnEmoji: true,
        backgroundColor: Color(.tertiarySystemFill)),
    HomeViewTransaction(
        image: Images.logoFigma,
        title: "Figma",
        description: "1 Oct 2020, 12:03 AM",
        amount: "- $4.99",
        amountColor: Color(.systemRed),
        doesHaveAnEmoji: false,
        backgroundColor: .clear),
    HomeViewTransaction(
        image: Images.logoDropbox,
        title: "Dropbox Organization",
        description: "1 Oct 2020, 12:02 AM",
        amount: "- $89.99",
        amountColor: Color(.systemRed),
        doesHaveAnEmoji: false,
        backgroundColor: .clear)
]
