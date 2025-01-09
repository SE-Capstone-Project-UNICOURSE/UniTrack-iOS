//
//  SavingGoalIcon.swift
//  Finance
//
//  Created by UI8 on 26/10/2020.
//

import SwiftUI

enum SavingGoalIcon: Hashable, CaseIterable {
    case first
    case second
    case third
    case fourth
    case fifth
    case sixth
    case seventh
    case eighth
    
    var iconName: String {
        switch self {
        case .first: return Icons.boltIcon
        case .second: return Icons.bagIcon
        case .third: return Icons.phoneIcon
        case .fourth: return Icons.carIcon
        case .fifth: return Icons.cardIcon
        case .sixth: return Icons.cameraIcon
        case .seventh: return Icons.buildingIcon
        case .eighth: return Icons.studentIcon
        }
    }
}
