//
//  MyTemplate.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

//This is a data model for my templates, you can change text, colors and many other things here if you wish.
struct MyTemplate: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var iconBackground: Color
    var title: String
    var description: String
}

var myTemplates = [
    MyTemplate(
        icon: Icons.studentIcon,
        iconBackground: Color(.systemIndigo),
        title: "Student loan",
        description: "Next bill is due 15 Oct 2020"),
    MyTemplate(
        icon: Icons.repeatIcon,
        iconBackground: Color(.systemOrange),
        title: "Spare change",
        description: "Round up your purchases"),
    MyTemplate(
        icon: Icons.mailStackIcon,
        iconBackground: Color(.systemGreen),
        title: "Savings account",
        description: "Get up to 2,25% APR today")
]
