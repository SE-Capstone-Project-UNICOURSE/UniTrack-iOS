//
//  RecentPayments.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

//This is a data model for recent payments, you can change text and many other things here if you wish.
struct RecentPayments: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
}

var recentPayments = [
    RecentPayments(
        image: Images.profileImage5,
        title: "Mark Anderson",
        description: "Last transfer was yesterday"),
    RecentPayments(
        image: Images.profileImage6,
        title: "Jenny Thompson",
        description: "Last transfer was 2 days ago")
]
