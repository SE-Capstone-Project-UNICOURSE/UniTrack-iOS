//
//  TransactionInformationItem.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct TransactionInformationItem: View {
    var information: TransactionInformation
    //This is transaction ifnromation item, you can modify the way it looks like from here if you wish.
    var body: some View {
        ListItemTextOnly(title: information.firstItem, bodyText: information.secondItem, bodyTextColor: information.secondItemTextColor)
    }
}
