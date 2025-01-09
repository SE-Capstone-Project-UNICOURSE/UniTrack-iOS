//
//  IconTextButton.swift
//  Finance
//
//  Created by UI8 on 19/10/2020.
//

import SwiftUI

struct IconTextButton: View {
    var icon: String
    var iconBackground: Color
    var title: String
    var bodyText: String
    var doesHaveAButton: Bool
    var buttonText: String
    var doesHaveAToggle: Bool
    @State var isOn = false
    var body: some View {
        //This is icon text with a button component. You can modify it here.
        HStack(spacing: 15) {
            IconBackground(icon: icon, backgroundColor: iconBackground)
            ListItemTextContent(title: title, bodyText: bodyText)
            Spacer()
            if doesHaveAButton {
                Button(action: {
                    //TODO here
                }) {
                    SecondaryButton(text: buttonText)
                }
                .buttonStyle(BorderlessButtonStyle())
            } else if doesHaveAToggle {
                Toggle("", isOn: $isOn)
                    .toggleStyle(SwitchToggleStyle(tint: Color(.systemIndigo)))
                    .frame(width: 51)
                    .offset(x: -5)
            } else {
                Image(systemName: "chevron.right")
                    .font(.system(size: 14, weight: .semibold, design: .default))
                    .foregroundColor(Color(.tertiaryLabel))
            }
        }
        //Makes 'Spacer()' area clickable, otherwise, if you try to click on 'Spacer()' area, it is just not going to do anything.
        .contentShape(Rectangle())
    }
}
