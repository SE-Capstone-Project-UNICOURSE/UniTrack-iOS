//
//  Settings.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

//This is a data model for settings items, you can change text, colors and many other things here if you wish.
struct Settings: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var iconBackground: Color
    var title: String
    var bodyText: String
    var doesHaveAToggle: Bool
}

var settingsItems = [
    Settings(
        icon: Icons.profileIcon,
        iconBackground: Color(.systemIndigo),
        title: "Personal details",
        bodyText: "See and edit your details",
        doesHaveAToggle: false),
    Settings(
        icon: Icons.bellIcon,
        iconBackground: Color(.systemOrange),
        title: "Notifications",
        bodyText: "Manage how we notify you",
        doesHaveAToggle: false),
    Settings(
        icon: Icons.infoIcon,
        iconBackground: Color(.systemGreen),
        title: "Account details",
        bodyText: "View your account information",
        doesHaveAToggle: false),
    Settings(
        icon: Icons.optionsIcon,
        iconBackground: Color(.systemYellow),
        title: "Preferences",
        bodyText: "Personalize your experience",
        doesHaveAToggle: false),
    Settings(
        icon: Icons.cardIcon,
        iconBackground: Color(.systemIndigo),
        title: "Manage cards",
        bodyText: "View and manage all your cards",
        doesHaveAToggle: false),
    Settings(
        icon: Icons.appearanceIcon,
        iconBackground: Color(.systemIndigo),
        title: "Appearance",
        bodyText: "Choose app appearance",
        doesHaveAToggle: false),
    Settings(
        icon: Icons.faceIDIcon,
        iconBackground: Color(.systemOrange),
        title: "Face ID",
        bodyText: "Secure login enabled",
        doesHaveAToggle: true),
    Settings(
        icon: Icons.aboutTheAppIcon,
        iconBackground: Color(.systemGreen),
        title: "About the app",
        bodyText: "All the important information",
        doesHaveAToggle: false)
]
