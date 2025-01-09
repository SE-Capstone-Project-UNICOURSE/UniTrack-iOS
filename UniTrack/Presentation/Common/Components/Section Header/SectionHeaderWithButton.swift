//
//  SectionHeaderWithButton.swift
//  Finance
//
//  Created by UI8 on 19/10/2020.
//

import SwiftUI

struct SectionHeaderWithButton: View {
    var title: String
    var buttonText: String
    var buttonTextFont: Font
    var icon: String
    var iconSize: Font
    var isBottomHidden: Bool
    var bottomFirstItem: String
    var bottomSecondItem: String
    var body: some View {
        //This is section header with button component. You can modify it here.
        VStack(spacing: 15) {
            HStack(spacing: 0) {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .textCase(.none)
                    .foregroundColor(.primary)
                Spacer()
                Button(action: {
                    //TODO here
                }) {
                    IconTextLeftButton(text: buttonText, textFont: buttonTextFont, icon: icon, iconSize: iconSize)
                }
            }
            .frame(width: UIScreen.main.bounds.width-32)
            if !isBottomHidden {
                HStack(spacing: 0) {
                    Text(bottomFirstItem)
                    Spacer()
                    Text(bottomSecondItem)
                }
                .frame(width: UIScreen.main.bounds.width-72)
            }
        }
    }
}
