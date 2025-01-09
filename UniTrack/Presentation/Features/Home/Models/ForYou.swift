//
//  ForYou.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

//This is a data model for 'For you' items, you can change text, colors and many other things here if you wish.
struct ForYou: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var iconBackground: Color
    var title: String
    var bodyText: String
    var doesHaveANavigationLink: Bool
}

var forYourItems = [
    ForYou(
        icon: Icons.cardIcon,
        iconBackground: Color(.systemIndigo),
        title: "Pay your bills",
        bodyText: "You can pay all your bills here",
        doesHaveANavigationLink: true),
    ForYou(
        icon: Icons.buildingIcon,
        iconBackground: Color(.systemOrange),
        title: "Getting a home loan",
        bodyText: "See your credit report now",
        doesHaveANavigationLink: true),
    ForYou(
        icon: Icons.stackIcon,
        iconBackground: Color(.systemGreen),
        title: "Set up a budget",
        bodyText: "Manage your spending",
        doesHaveANavigationLink: true),
]
