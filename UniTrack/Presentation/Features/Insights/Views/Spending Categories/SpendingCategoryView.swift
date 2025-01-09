//
//  SpendingCategoryView.swift
//  Finance
//
//  Created by UI8 on 26/10/2020.
//

import SwiftUI

struct SpendingCategoryView: View {
    @Environment (\.presentationMode) var present
    var body: some View {
        NavigationView {
            List {
                CategoryBudget()
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Budget", displayMode: .inline)
            .navigationBarItems(
                leading:
                    Button(action: {
                        dismiss()
                    }) {
                        TertiaryButton(text: "Cancel", fontWeight: .regular)
                    },
                trailing:
                    Button(action: {
                        dismiss()
                        hapticFeedback(feedbackType: .success)
                    }) {
                        TertiaryButton(text: "Done", fontWeight: .semibold)
                    }
            )
        }
    }
    func dismiss() {
        present.wrappedValue.dismiss()
    }
}

struct SpendingCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        SpendingCategoryView()
    }
}
