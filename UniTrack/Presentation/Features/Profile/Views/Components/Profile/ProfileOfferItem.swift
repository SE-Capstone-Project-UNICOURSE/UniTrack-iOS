//
//  ProfileOfferItem.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct ProfileOfferItem: View {
    var profileOfferItems: ProfileOffers
    var body: some View {
        //This is profile offer item, you can modify the way it looks like from here if you wish.
        HStack(spacing: 15) {
            if profileOfferItems.doesHaveAnIcon {
                IconBackground(icon: profileOfferItems.image, backgroundColor: profileOfferItems.backgroundColor)
            } else {
                Image(profileOfferItems.image)
                    .renderingMode(.original)
            }
            ListItemTextContent(title: profileOfferItems.title, bodyText: profileOfferItems.description)
            Spacer()
        }
    }
}
