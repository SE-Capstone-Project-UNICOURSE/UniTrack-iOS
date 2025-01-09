//
//  RequestFundsItem.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct RequestFundsItem: View {
    var requestFundsItems: RequestFunds
    var body: some View {
        //This is request funds item, you can modify the way it looks like from here if you wish.
        IconText(icon: requestFundsItems.icon, backgroundColor: requestFundsItems.iconBackground, title: requestFundsItems.title, bodyText: requestFundsItems.description, doesHaveANavigationLink: false)
    }
}
