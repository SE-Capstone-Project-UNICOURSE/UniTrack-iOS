//
//  ThisWeekSpending.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

//This is a data model for this week spending, you can change text, colors and many other things here if you wish.
struct ThisWeekSpending: Identifiable, Hashable {
    var id = UUID()
    var day: String
    var chartItemColor: Color
    var chartHeight: CGFloat
}

var spendingReport = [
    ThisWeekSpending(
        day: "Mon",
        chartItemColor: Color(.systemIndigo),
        chartHeight: 95.0),
    ThisWeekSpending(
        day: "Tue",
        chartItemColor: Color(.systemIndigo),
        chartHeight: 20.0),
    ThisWeekSpending(
        day: "Wed",
        chartItemColor: Color(.systemIndigo),
        chartHeight: 60.0),
    ThisWeekSpending(
        day: "Thu",
        chartItemColor: Color(.systemIndigo),
        chartHeight: 128.0),
    ThisWeekSpending(
        day: "Fri",
        chartItemColor: Color(.systemIndigo),
        chartHeight: 80.0),
    ThisWeekSpending(
        day: "Sat",
        chartItemColor: Color(.systemIndigo),
        chartHeight: 110.0),
    ThisWeekSpending(
        day: "Sun",
        chartItemColor: Color(.systemIndigo),
        chartHeight: 35.0)
]
