//
//  IconTextProgress.swift
//  Finance
//
//  Created by UI8 on 19/10/2020.
//

import SwiftUI

struct IconTextProgress: View {
    var icon: String
    var iconBackground: Color
    var title: String
    var bodyText: String
    var amount: String
    var fullAmount: String
    var progress: CGFloat
    var body: some View {
        //This is icon text with a progress bar component. You can modify it here.
        HStack(alignment: .top, spacing: 15) {
            IconBackground(icon: icon, backgroundColor: iconBackground)
            VStack(alignment: .leading, spacing: 5) {
                HStack(alignment: .top, spacing: 20) {
                    ListItemTextContent(title: title, bodyText: bodyText)
                    Spacer()
                    VStack(alignment: .trailing, spacing: 0) {
                        Text(amount)
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .foregroundColor(Color(.systemIndigo))
                        Spacer()
                        Text(fullAmount)
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                }
                ProgressView(value: progress, total: 100.0)
                    .progressViewStyle(LinearProgressViewStyle(tint: iconBackground))
            }
        }
        //Makes 'Spacer()' area clickable, otherwise, if you try to click on 'Spacer()' area, it is just not going to do anything.
        .contentShape(Rectangle())
    }
}
