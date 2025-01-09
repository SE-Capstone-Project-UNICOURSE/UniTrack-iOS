//
//  RecentPayments.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct RecentPaymentsList: View {
    @State var recentPaymentItems = recentPayments
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Recent", secondItem: "")) {
            ForEach(recentPaymentItems, id: \.self) { recentPaymentItem in
                RecentPaymentItem(recentPaymentItems: recentPaymentItem)
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct RecentPaymentsList_Previews: PreviewProvider {
    static var previews: some View {
        RecentPaymentsList()
    }
}
