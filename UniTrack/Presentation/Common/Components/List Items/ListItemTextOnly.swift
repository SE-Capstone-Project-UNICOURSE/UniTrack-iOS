//
//  ListItemTextOnly.swift
//  Finance
//
//  Created by UI8 on 19/10/2020.
//

import SwiftUI

struct ListItemTextOnly: View {
    var title: String
    var bodyText: String
    var bodyTextColor: Color
    var body: some View {
        //This is list item component that has text only. You can modify it here.
        HStack(spacing: 0) {
            Text(title)
                .font(.subheadline)
                .foregroundColor(.secondary)
            Spacer()
            Text(bodyText)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(bodyTextColor)
        }
    }
}
