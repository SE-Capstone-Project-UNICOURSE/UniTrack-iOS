//
//  RequestFunds.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

//This is a data model for reques funds items, you can change text, colors and many other things here if you wish.
struct RequestFunds: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var iconBackground: Color
    var title: String
    var description: String
}

var requestFunds = [
    RequestFunds(
        icon: Icons.shareIcon,
        iconBackground: Color(.systemIndigo),
        title: "Share a link",
        description: "Request money from friends"),
    RequestFunds(
        icon: Icons.qrCodeIcon,
        iconBackground: Color(.systemOrange),
        title: "Scan code",
        description: "Get your unique code now")
]
