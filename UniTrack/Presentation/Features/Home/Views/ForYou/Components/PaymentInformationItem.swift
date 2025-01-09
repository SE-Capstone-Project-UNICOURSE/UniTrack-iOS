//
//  PaymentInformationItem.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct PaymentInformationItem: View {
    var paymentInformationItems: PaymentInformation
    var body: some View {
        //This is payment information item, you can modify the way it looks like from here if you wish.
        ListItemTextOnly(title: paymentInformationItems.title, bodyText: paymentInformationItems.information, bodyTextColor: paymentInformationItems.informationTextColor)
    }
}
