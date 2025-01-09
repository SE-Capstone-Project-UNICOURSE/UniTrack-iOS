//
//  Cards.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

//This is a data model for cards, you can change text, colors and many other things here if you wish.
struct Cards: Identifiable, Hashable {
    var id = UUID()
    var cardType: String
    var cardNumber: String
    var expiryDate: String
    var CVV: String
    var cardColor: Color
}

var cards = [
    Cards(
        cardType: "Debit",
        cardNumber: "4132  0724  **37  48** ",
        expiryDate: "05/25",
        CVV: "472",
        cardColor: Color(.systemIndigo)),
    Cards(
        cardType: "Credit",
        cardNumber: "9625  **46  0825  73** ",
        expiryDate: "03/22",
        CVV: "082",
        cardColor: Color(.systemOrange)),
    Cards(
        cardType: "Cash",
        cardNumber: "610*  0217  9***  3520 ",
        expiryDate: "12/23",
        CVV: "306",
        cardColor: Color(.systemGreen))
]
