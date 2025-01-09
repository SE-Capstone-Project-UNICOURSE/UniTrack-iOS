//
//  SelectAccount.swift
//  Finance
//
//  Created by UI8 on 26/10/2020.
//

import SwiftUI

enum SelectAccount: Hashable, CaseIterable {
    case first
    case second
    case third
    case fourth
    
    var icon: String {
        switch self {
        case .first: return Icons.cardIcon
        case .second: return Icons.mailStackIcon
        case .third: return Icons.mailStackIcon
        case .fourth: return Icons.buildingIcon
        }
    }
    var color: Color {
        switch self {
        case .first: return Color(.systemIndigo)
        case .second: return Color(.systemOrange)
        case .third: return Color(.systemGreen)
        case .fourth: return Color(.systemYellow)
        }
    }
    var accountNumber: String {
        switch self {
        case .first: return "*0981"
        case .second: return "*1842"
        case .third: return "*0216"
        case .fourth: return "*3409"
        }
    }
}
