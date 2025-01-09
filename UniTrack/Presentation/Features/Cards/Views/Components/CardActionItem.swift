//
//  CardActionItem.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct CardActionItem: View {
    var cardActionItems: CardActions
    var body: some View {
        //This is card action item, you can modify the way it looks like from here if you wish.
        IconTextButton(icon: cardActionItems.icon, iconBackground: cardActionItems.iconBackground, title: cardActionItems.title, bodyText: cardActionItems.bodyText, doesHaveAButton: cardActionItems.doesHaveAButton, buttonText: "View", doesHaveAToggle: false)
    }
}
