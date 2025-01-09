//
//  IconTextAmount.swift
//  Finance
//
//  Created by UI8 on 21/10/2020.
//

import SwiftUI

struct IconTextAmount: View {
    var icon: String
    var iconBackground: Color
    var title: String
    var bodyText: String
    var amount: String
    var amountFont: Font
    var body: some View {
        //This is icon text with amount component. You can modify it here.
        HStack(spacing: 15) {
            IconBackground(icon: icon, backgroundColor: iconBackground)
            HStack(alignment: .top, spacing: 0) {
                ListItemTextContent(title: title, bodyText: bodyText)
                Spacer()
                Text(amount)
                    .font(amountFont)
                    .fontWeight(.medium)
                    .foregroundColor(Color(.systemIndigo))
            }
        }
        //Makes 'Spacer()' area clickable, otherwise, if you try to click on 'Spacer()' area, it is just not going to do anything.
        .contentShape(Rectangle())
    }
}
