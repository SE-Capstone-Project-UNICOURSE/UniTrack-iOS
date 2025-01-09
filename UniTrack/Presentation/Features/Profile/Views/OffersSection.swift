//
//  OffersSection.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct OffersSection: View {
    @State var offerItems = offers
    var body: some View {
        Section(header: SectionHeaderWithButton(title: "Offers for you", buttonText: "See all", buttonTextFont: .subheadline, icon: Icons.chevronRightIcon, iconSize: .system(size: 15, weight: .semibold, design: .default), isBottomHidden: false, bottomFirstItem: "Expiring Soon", bottomSecondItem: "")) {
            ForEach(offerItems, id: \.self) { offerItem in
                ProfileOfferItem(profileOfferItems: offerItem)
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor2)
        }
    }
}

struct OffersSection_Previews: PreviewProvider {
    static var previews: some View {
        OffersSection()
    }
}
