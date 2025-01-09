//
//  PaymentInformationSection.swift
//  Finance
//
//  Created by UI8 on 19/10/2020.
//

import SwiftUI

struct PaymentInformationSection: View {
    @State var paymentInformationItems = paymentInformation
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Information", secondItem: "")) {
            ForEach(paymentInformationItems, id: \.self) { paymentInformationItem in
                PaymentInformationItem(paymentInformationItems: paymentInformationItem)
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor2)
        }
    }
}
