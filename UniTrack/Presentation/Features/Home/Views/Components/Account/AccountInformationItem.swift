//
//  AccountInformationItem.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct AccountInformationItem: View {
    var accountInformationItem: AccountInformation
    var body: some View {
        //This is account information item, you can modify the way it looks like from here if you wish.
        ListItemTextOnly(title: accountInformationItem.firstItem, bodyText: accountInformationItem.secondItem, bodyTextColor: accountInformationItem.secondItemTextcolor)
    }
}
