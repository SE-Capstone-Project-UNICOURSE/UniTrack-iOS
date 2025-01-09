//
//  CardsViewQuickActions.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

//This is a data model for card quick actions, you can change text, colors and many other things here if you wish.
struct CardsViewQuickActions: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var iconBackground: Color
    var title: String
    var bodyText: String
    var doesHaveAButton: Bool
    var buttonText: String
    var doesHaveAToggle: Bool
}

var quickActions = [
    CardsViewQuickActions(
        icon: Icons.freezeIcon,
        iconBackground: Color(.systemIndigo),
        title: "Freeze card",
        bodyText: "Freeze your card",
        doesHaveAButton: false,
        buttonText: "",
        doesHaveAToggle: true),
    CardsViewQuickActions(
        icon: Icons.eyeIcon,
        iconBackground: Color(.systemOrange),
        title: "Show details",
        bodyText: "Reveal your card details",
        doesHaveAButton: true,
        buttonText: "Show",
        doesHaveAToggle: false),
    CardsViewQuickActions(
        icon: Icons.cardIcon,
        iconBackground: Color(.systemGreen),
        title: "Manage card",
        bodyText: "You can manage your card here",
        doesHaveAButton: false,
        buttonText: "",
        doesHaveAToggle: false),
    CardsViewQuickActions(
        icon: Icons.chatIcon,
        iconBackground: Color(.systemYellow),
        title: "Get help",
        bodyText: "You can request help now",
        doesHaveAButton: true,
        buttonText: "Get",
        doesHaveAToggle: false)
]
