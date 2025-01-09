//
//  ProfileQuickActions.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

//This is a data model for profile quick actions, you can change text, colors and many other things here if you wish.
struct ProfileQuickActions: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var iconBackground: Color
    var title: String
    var bodyText: String
    var doesHaveAButton: Bool
    var buttonText: String
}

var actions = [
    ProfileQuickActions(
        icon: Icons.cardIcon,
        iconBackground: Color(.systemIndigo),
        title: "Credit card",
        bodyText: "Your bill is due in 2 days",
        doesHaveAButton: true,
        buttonText: "Pay"),
    ProfileQuickActions(
        icon: Icons.bellIcon,
        iconBackground: Color(.systemOrange),
        title: "Enable notifications",
        bodyText: "Receive updates on your spending",
        doesHaveAButton: false,
        buttonText: ""),
    ProfileQuickActions(
        icon: Icons.sendIcon,
        iconBackground: Color(.systemGreen),
        title: "Send $10 to John",
        bodyText: "John sent you a request ",
        doesHaveAButton: true,
        buttonText: "Send"),
    ProfileQuickActions(
        icon: Icons.calendarIcon,
        iconBackground: Color(.systemYellow),
        title: "Card expired",
        bodyText: "Your card *4512 has expired",
        doesHaveAButton: false,
        buttonText: "")
]
