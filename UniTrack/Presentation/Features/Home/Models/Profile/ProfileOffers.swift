//
//  ProfileOffers.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

//This is a data model for profile offers, you can change text, colors and many other things here if you wish.
struct ProfileOffers: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var backgroundColor: Color
    var title: String
    var description: String
    var doesHaveAnIcon: Bool
}

var offers = [
    ProfileOffers(
        image: Icons.percentIcon,
        backgroundColor: Color(.systemIndigo),
        title: "5% Cashback",
        description: "For every purchase you make",
        doesHaveAnIcon: true),
    ProfileOffers(
        image: Images.logoUI8,
        backgroundColor: .clear,
        title: "20% Discount",
        description: "ui8.net",
        doesHaveAnIcon: false)
]
