//
//  ProfileQuickActionItem.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct ProfileQuickActionItem: View {
    var profileQuickActions: ProfileQuickActions
    var body: some View {
        //This is profile quick action item, you can modify the way it looks like from here if you wish.
        IconTextButton(icon: profileQuickActions.icon, iconBackground: profileQuickActions.iconBackground, title: profileQuickActions.title, bodyText: profileQuickActions.bodyText, doesHaveAButton: profileQuickActions.doesHaveAButton, buttonText: profileQuickActions.buttonText, doesHaveAToggle: false)
    }
}
