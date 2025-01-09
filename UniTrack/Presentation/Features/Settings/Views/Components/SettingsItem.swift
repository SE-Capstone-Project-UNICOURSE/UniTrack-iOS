//
//  SettingsItem.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct SettingsItem: View {
    var settingsItems: Settings
    var body: some View {
        //This is settings item, you can modify the way it looks like from here if you wish.
        IconTextButton(icon: settingsItems.icon, iconBackground: settingsItems.iconBackground, title: settingsItems.title, bodyText: settingsItems.bodyText, doesHaveAButton: false, buttonText: "", doesHaveAToggle: settingsItems.doesHaveAToggle)
    }
}
