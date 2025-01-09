//
//  AccountQuickActionItem.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct AccountQuickActionItem: View {
    var accountQuickActionItem: AccountQuickActions
    var body: some View {
        //This is account quick action item, you can modify the way it looks like from here if you wish.
        IconTextButton(icon: accountQuickActionItem.icon, iconBackground: accountQuickActionItem.iconBackground, title: accountQuickActionItem.title, bodyText: accountQuickActionItem.bodyText, doesHaveAButton: accountQuickActionItem.doesHaveAButton, buttonText: "View", doesHaveAToggle: false)
    }
}
