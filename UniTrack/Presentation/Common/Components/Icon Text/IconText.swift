//
//  IconText.swift
//  Finance
//
//  Created by UI8 on 19/10/2020.
//

import SwiftUI

struct IconText: View {
    var icon: String
    var backgroundColor: Color
    var title: String
    var bodyText: String
    var doesHaveANavigationLink: Bool
    var body: some View {
        //This is icon text component. You can modify it here.
        HStack(spacing: 15) {
            IconBackground(icon: icon, backgroundColor: backgroundColor)
            ListItemTextContent(title: title, bodyText: bodyText)
            Spacer()
            if !doesHaveANavigationLink {
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .semibold, design: .default))
                    .foregroundColor(Color(.tertiaryLabel))
            }
        }
        //Makes 'Spacer()' area clickable, otherwise, if you try to click on 'Spacer()' area, it is just not going to do anything.
        .contentShape(Rectangle())
    }
}
