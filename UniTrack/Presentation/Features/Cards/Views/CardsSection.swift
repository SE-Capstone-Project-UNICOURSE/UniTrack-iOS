//
//  CardsSection.swift
//  Finance
//
//  Created by UI8 on 21/10/2020.
//

import SwiftUI
import Pages

struct CardsSection: View {
    @State var cardItems = cards
    @State var currentCard = 0
    var body: some View {
        Section {
            Pages(currentPage: $currentCard, navigationOrientation: .horizontal, hasControl: false) {
                CardItem(cardItems: cardItems[0])
                CardItem(cardItems: cardItems[1])
                CardItem(cardItems: cardItems[2])
            }
            .frame(height: 200)
            .hideSeparators(insets: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0) ,rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct CardsSection_Previews: PreviewProvider {
    static var previews: some View {
        CardsSection()
    }
}
