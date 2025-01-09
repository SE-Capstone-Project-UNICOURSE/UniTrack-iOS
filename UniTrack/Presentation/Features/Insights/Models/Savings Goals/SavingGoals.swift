//
//  SavingGoals.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

//This is a data model for savings goals, you can change text, colors and many other things here if you wish.
struct SavingGoals: Identifiable, Hashable {
    var id = UUID()
    var icon: String
    var iconBackground: Color
    var title: String
    var description: String
    var currentAmount: String
    var goalAmount: String
    var progress: CGFloat
}
var goals = [
    SavingGoals(
        icon: Icons.buildingIcon,
        iconBackground: Color(.systemIndigo),
        title: "House deposit",
        description: "Buy a new house in San Francisco, California",
        currentAmount: "$10,031.96",
        goalAmount: "$25,000.00",
        progress: 40.0),
    SavingGoals(
        icon: Icons.phoneIcon,
        iconBackground: Color(.systemOrange),
        title: "New iPhone",
        description: "Have enough money for the new iPhone 12",
        currentAmount: "$974.12",
        goalAmount: "$1150.00",
        progress: 85.0),
    SavingGoals(
        icon: Icons.carIcon,
        iconBackground: Color(.systemGreen),
        title: "Car repairs",
        description: "Fix my old car and start driving again",
        currentAmount: "$25.44",
        goalAmount: "$375.00",
        progress: 5.0),
    SavingGoals(
        icon: Icons.studentIcon,
        iconBackground: Color(.systemYellow),
        title: "Student loan",
        description: "Repay the loan in full as soon as possible",
        currentAmount: "$3,089.03",
        goalAmount: "$75,450.00",
        progress: 5.0),
    SavingGoals(
        icon: Icons.cameraIcon,
        iconBackground: Color(.systemIndigo),
        title: "New camera",
        description: "Get a new camera before the wedding ",
        currentAmount: "$647.31",
        goalAmount: "$640.75",
        progress: 100.0),
    SavingGoals(
        icon: Icons.boltIcon,
        iconBackground: Color(.systemOrange),
        title: "Home automation",
        description: "Buy a new equipment for the smart home",
        currentAmount: "$1571.82",
        goalAmount: "$1500.00",
        progress: 100.0)
]
