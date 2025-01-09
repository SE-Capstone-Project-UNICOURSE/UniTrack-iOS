//
//  SavingGoalColor.swift
//  Finance
//
//  Created by UI8 on 26/10/2020.
//

import SwiftUI

enum SavingGoalColor: Hashable, CaseIterable {
    case first
    case second
    case third
    case fourth
    case fifth
    case sixth
    case seventh
    case eighth
    
    var color: Color {
        switch self {
        case .first: return Color(.systemIndigo)
        case .second: return Color(.systemOrange)
        case .third: return Color(.systemGreen)
        case .fourth: return Color(.systemYellow)
        case .fifth: return Color(.systemPurple)
        case .sixth: return Color(.systemTeal)
        case .seventh: return Color(.systemBlue)
        case .eighth: return Color(.systemPink)
        }
    }
}
