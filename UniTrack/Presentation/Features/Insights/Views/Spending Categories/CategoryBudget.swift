//
//  CategoryBudget.swift
//  Finance
//
//  Created by UI8 on 26/10/2020.
//

import SwiftUI

struct CategoryBudget: View {
    @State var spendingCategoryItems = categories
    var body: some View {
        Section {
            ForEach(spendingCategoryItems, id: \.self) { spendingCategoryItem in
                IconTextProgress(icon: spendingCategoryItem.icon, iconBackground: spendingCategoryItem.iconBackground, title: spendingCategoryItem.title, bodyText: spendingCategoryItem.additionalDescription, amount: spendingCategoryItem.amount, fullAmount: spendingCategoryItem.fullAmount, progress: spendingCategoryItem.progress)
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct CategoryBudget_Previews: PreviewProvider {
    static var previews: some View {
        CategoryBudget()
    }
}
