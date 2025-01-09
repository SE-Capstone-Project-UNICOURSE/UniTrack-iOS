//
//  CardsViewQuickActionItem.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct CardsViewQuickActionItem: View {
    var quickActionItems: CardsViewQuickActions
    var body: some View {
        //This is card quick action item, you can modify the way it looks like from here if you wish.
        IconTextButton(icon: quickActionItems.icon, iconBackground: quickActionItems.iconBackground, title: quickActionItems.title, bodyText: quickActionItems.bodyText, doesHaveAButton: quickActionItems.doesHaveAButton, buttonText: quickActionItems.buttonText, doesHaveAToggle: quickActionItems.doesHaveAToggle)
    }
}
