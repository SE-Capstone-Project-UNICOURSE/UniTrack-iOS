//
//  SpendingCategoryItem.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct SpendingCategoryItem: View {
    var spendingCategoryItem: SpendingCategory
    var body: some View {
        //This is spending category item, you can modify the way it looks like from here if you wish.
        IconTextAmount(icon: spendingCategoryItem.icon, iconBackground: spendingCategoryItem.iconBackground, title: spendingCategoryItem.title, bodyText: spendingCategoryItem.description, amount: spendingCategoryItem.amount, amountFont: .subheadline)
    }
}
