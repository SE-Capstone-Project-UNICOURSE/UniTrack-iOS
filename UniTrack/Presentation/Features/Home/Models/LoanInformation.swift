//
//  LoanInformation.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

//This is a data model for loan information items, you can change text, colors and many other things here if you wish.
struct LoanInformation: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var iconBackground: Color
    var title: String
    var bodyText: String
    var amount: String
    var fullAmount: String
    var progress: CGFloat
}

var loanInformation = [
    LoanInformation(
        icon: Icons.pieChartIcon,
        iconBackground: Color(.systemIndigo),
        title: "Remaining",
        bodyText: "View all your remaining balance here",
        amount: "$6,871.00",
        fullAmount: "$10.450.00",
        progress: 70.0),
    LoanInformation(
        icon: Icons.percentIcon,
        iconBackground: Color(.systemOrange),
        title: "Interest paid",
        bodyText: "See how much you have paid in interest",
        amount: "$683.98",
        fullAmount: "",
        progress: 50.0)
]
