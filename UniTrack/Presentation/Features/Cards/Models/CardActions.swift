//
//  CardActions.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

//This is a data model for card actions, you can change text, colors and many other things here if you wish.
struct CardActions: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var iconBackground: Color
    var title: String
    var bodyText: String
    var doesHaveAButton: Bool
}

var cardActions = [
    CardActions(
        icon: Icons.paperPlaneIcon,
        iconBackground: Color(.systemIndigo),
        title: "Request replacement",
        bodyText: "You can request a new card here",
        doesHaveAButton: false),
    CardActions(
        icon: Icons.limitIcon,
        iconBackground: Color(.systemOrange),
        title: "Spending limit",
        bodyText: "Set up the spending limit",
        doesHaveAButton: false),
    CardActions(
        icon: Icons.statementsIcon,
        iconBackground: Color(.systemGreen),
        title: "Card statements",
        bodyText: "View recent statements",
        doesHaveAButton: true),
    CardActions(
        icon: Icons.plusBackgroundIcon,
        iconBackground: Color(.systemYellow),
        title: "Overdraft limit",
        bodyText: "Increase your limit here",
        doesHaveAButton: false),
    CardActions(
        icon: Icons.trashIcon,
        iconBackground: Color(.systemPurple),
        title: "Cancel card",
        bodyText: "Delete the card from your account",
        doesHaveAButton: false)
]
