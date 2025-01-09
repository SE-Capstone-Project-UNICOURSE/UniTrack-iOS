//
//  TransactionSection.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

struct TransactionSection: View {
    @State var transactionItems = transactions
    @Binding var showTransactionInformation: Bool
    var body: some View {
        Section(header: sectionHeader) {
            ForEach(transactionItems, id: \.self) { transactionItem in
                HomeViewTransactionItem(transactionItems: transactionItem)
                    .onTapGesture {
                        self.showTransactionInformation.toggle()
                    }
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
    var sectionHeader: some View {
        VStack(spacing: 15) {
            HStack(spacing: 0) {
                Text("Transactions")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .textCase(.none)
                    .foregroundColor(.primary)
                Spacer()
                NavigationLink (destination: TransactionsView()) {
                    IconTextLeftButton(text: "See all", textFont: .subheadline, icon: Icons.chevronRightIcon, iconSize: .system(size: 15, weight: .semibold, design: .default))
                }
            }
            .frame(width: UIScreen.main.bounds.width-32)
            HStack(spacing: 0) {
                Text("Most Recent")
                Spacer()
                Text("+ $3405.02")
            }
            .frame(width: UIScreen.main.bounds.width-72)
        }
    }
}
