//
//  ImageTextButton.swift
//  Finance
//
//  Created by UI8 on 21/10/2020.
//

import SwiftUI

struct ImageTextButton: View {
    var image: String
    var title: String
    var bodyText: String
    var buttonText: String
    var body: some View {
        //This is image text with a button component. You can modify it here.
        HStack(spacing: 15) {
            Image(image)
                .renderingMode(.original)
            ListItemTextContent(title:  title, bodyText: bodyText)
            Spacer()
            Button(action: {
                //TODO here
            }) {
                SecondaryButton(text: buttonText)
            }
            .buttonStyle(BorderlessButtonStyle())
        }
    }
}
