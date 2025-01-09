//
//  ImageText.swift
//  Finance
//
//  Created by UI8 on 22/10/2020.
//

import SwiftUI

struct ImageText: View {
    var image: String
    var title: String
    var bodyText: String
    var body: some View {
        //This is image text component. You can modify it here.
        HStack(spacing: 15) {
            Image(image)
                .renderingMode(.original)
            ListItemTextContent(title: title, bodyText: bodyText)
            Spacer()
            Image(systemName: "chevron.right")
                .font(.system(size: 14, weight: .semibold, design: .default))
                .foregroundColor(Color(.tertiaryLabel))
        }
    }
}
