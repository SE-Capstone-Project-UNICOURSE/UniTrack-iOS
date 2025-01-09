//
//  ListItemTextContent.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

struct ListItemTextContent: View {
    var title: String
    var bodyText: String
    var body: some View {
        //This is list item text content component. You can modify it here.
        VStack(alignment: .leading, spacing: 2) {
            Text(title)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.primary)
            Text(bodyText)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}
