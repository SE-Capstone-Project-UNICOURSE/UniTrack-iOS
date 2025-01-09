//
//  Bill.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

//This is a data model for bill items, you can change text, colors and many other things here if you wish.
struct Bill: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var iconBackground: Color
    var title: String
    var bodyText: String
}

var bills = [
    Bill(
        icon: Icons.buildingIcon,
        iconBackground: Color(.systemIndigo),
        title: "Mortgage payment",
        bodyText: "Your due date is 7 Oct 2020"),
    Bill(
        icon: Icons.carIcon,
        iconBackground: Color(.systemOrange),
        title: "Car loan payment",
        bodyText: "Please make a payment now"),
    Bill(
        icon: Icons.cardIcon,
        iconBackground: Color(.systemGreen),
        title: "Credit card payment",
        bodyText: "You have a balance of $309.72"),
    Bill(
        icon: Icons.wifiIcon,
        iconBackground: Color(.systemIndigo),
        title: "Home broadband",
        bodyText: "Pay your Wi-Fi bill here"),
    Bill(
        icon: Icons.tvIcon,
        iconBackground: Color(.systemOrange),
        title: "Television",
        bodyText: "Pay your TV bill here"),
    Bill(
        icon: Icons.gearIcon,
        iconBackground: Color(.systemGreen),
        title: "Utilities Bill",
        bodyText: "View how much you need to pay"),
    Bill(
        icon: Icons.houseIcon,
        iconBackground: Color(.systemYellow),
        title: "Housekeeping",
        bodyText: "You can pay your bill now"),
    Bill(
        icon: Icons.maintenanceIcon,
        iconBackground: Color(.systemPurple),
        title: "Maintenance",
        bodyText: "See and pay your bill here")
]
