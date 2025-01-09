//
//  TransactionItem.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

struct HomeViewTransactionItem: View {
    var transactionItems: HomeViewTransaction
    var body: some View {
        //This is HomeView transaction item, you can modify the way it looks like from here if you wish.
        HStack(spacing: 15) {
            if transactionItems.doesHaveAnEmoji {
                EmojiBackground(emoji: transactionItems.image, backgroundColor: transactionItems.backgroundColor)
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
        //Makes 'Spacer()' area clickable, otherwise, if you try to click on 'Spacer()' area, it is just not going to do anything.
        .contentShape(Rectangle())
    }
}
