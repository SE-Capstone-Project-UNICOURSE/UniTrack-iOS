//
//  LocationInformation.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

//This is a data model for transaction location infprmation, you can change text and many other things here if you wish.
struct LocationInformation: Identifiable, Hashable {
    var id = UUID()
    var firstItem: String
    var secondItem: String
}

var locationInformation = [
    LocationInformation(
        firstItem: "Street name",
        secondItem: "17 Great Street"),
    LocationInformation(
        firstItem: "City",
        secondItem: "San Francisco, California"),
    LocationInformation(
        firstItem: "Country",
        secondItem: "United States")
]
