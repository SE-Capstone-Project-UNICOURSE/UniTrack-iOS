//
//  AccountItem.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

struct AccountItem: View {
    var accountItem: Account
    var body: some View {
        //This is nboarding account item, you can modify the way it looks like from here if you wish.
        IconTextButton(icon: accountItem.icon, iconBackground: accountItem.iconBackground, title: accountItem.balance, bodyText: accountItem.accountType, doesHaveAButton: true, buttonText: "View", doesHaveAToggle: false)
    }
}

