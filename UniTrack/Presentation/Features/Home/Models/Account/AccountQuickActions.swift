//
//  AccountQuickActions.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

//This is a data model for account quick actions, you can change text, colors and many other things here if you wish.
struct AccountQuickActions: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var iconBackground: Color
    var title: String
    var bodyText: String
    var doesHaveAButton: Bool
}

var accountQuickActions = [
    AccountQuickActions(
        icon: Icons.cardIcon,
        iconBackground: Color(.systemIndigo),
        title: "Increase overdraft",
        bodyText: "You can request a higher limit",
        doesHaveAButton: false),
    AccountQuickActions(
        icon: Icons.bellIcon,
        iconBackground: Color(.systemOrange),
        title: "Enable SMS alerts",
        bodyText: "Stay updated no matter what",
        doesHaveAButton: true),
    AccountQuickActions(
        icon: Icons.boltIcon,
        iconBackground: Color(.systemGreen),
        title: "Upgrade account",
        bodyText: "Discuss your upgrade options now",
        doesHaveAButton: false)
]
