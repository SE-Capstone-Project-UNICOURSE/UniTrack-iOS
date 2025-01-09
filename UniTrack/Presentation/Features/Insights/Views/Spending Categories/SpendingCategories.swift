//
//  SpendingCategories.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct SpendingCategories: View {
    @State var spendingCategoryItems = categories
    @Binding var showInformation: Bool
    var body: some View {
        Section {
            ForEach(spendingCategoryItems, id: \.self) { spendingCategoryItem in
                SpendingCategoryItem(spendingCategoryItem: spendingCategoryItem)
                    .onTapGesture {
                        self.showInformation.toggle()
                    }
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}
