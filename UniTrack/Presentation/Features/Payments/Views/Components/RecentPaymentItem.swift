//
//  RecentPaymentItem.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct RecentPaymentItem: View {
    var recentPaymentItems: RecentPayments
    var body: some View {
        //This is recent payments item, you can modify the way it looks like from here if you wish.
        ImageText(image: recentPaymentItems.image, title: recentPaymentItems.title, bodyText: recentPaymentItems.description)
    }
}
