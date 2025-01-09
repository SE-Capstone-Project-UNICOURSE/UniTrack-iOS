//
//  PaymentInformation.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

//This is a data model for payment information items, you can change text, colors and many other things here if you wish.
struct PaymentInformation: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var information: String
    var informationTextColor: Color
}

var paymentInformation = [
    PaymentInformation(
        title: "Amount due",
        information: "$745.80",
        informationTextColor: Color(.systemIndigo)),
    PaymentInformation(
        title: "Due date",
        information: "10 Oct 2020",
        informationTextColor: Color.primary),
    PaymentInformation(
        title: "Payment reference",
        information: "326 - 124",
        informationTextColor: Color.primary)
]
