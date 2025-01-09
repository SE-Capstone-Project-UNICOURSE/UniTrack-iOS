//
//  TransactionViewTransactionItem.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct TransactionViewTransactionItem: View {
    var transactionItems: TransactionViewTransactions
    //This is TransactionView transaction item, you can modify the way it looks like from here if you wish.
    var body: some View {
        HStack(spacing: 15) {
            if transactionItems.doesHaveAnEmoji {
                EmojiBackground(emoji: transactionItems.image, backgroundColor: transactionItems.backgroundColor)
            } else if transactionItems.doesHaveAnIcon {
                IconBackground(icon: transactionItems.image, backgroundColor: transactionItems.backgroundColor)
            } else {
                Image(transactionItems.image)
                    .renderingMode(.original)
            }
            HStack(alignment: .top, spacing: 0) {
                ListItemTextContent(title: transactionItems.title, bodyText: transactionItems.description)
                Spacer()
                Text(transactionItems.amount)
                    .font(.footnote)
                    .fontWeight(.medium)
                    .foregroundColor(transactionItems.amountColor)
            }
        }
    }
}
