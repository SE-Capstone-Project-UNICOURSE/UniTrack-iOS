//
//  BillItem.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct BillItem: View {
    var billItems: Bill
    var body: some View {
        //This is bill item, you can modify the way it looks like from here if you wish.
        IconTextButton(icon: billItems.icon, iconBackground: billItems.iconBackground, title: billItems.title, bodyText: billItems.bodyText, doesHaveAButton: false, buttonText: "", doesHaveAToggle: false)
    }
}
