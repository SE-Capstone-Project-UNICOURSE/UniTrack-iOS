//
//  Actions.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct Actions: View {
    @State var cardActionsItems = cardActions
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Actions", secondItem: "")) {
            ForEach(cardActionsItems, id: \.self) { cardActionsItem in
                CardActionItem(cardActionItems: cardActionsItem)
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor2)
        }
    }
}

struct Actions_Previews: PreviewProvider {
    static var previews: some View {
        Actions()
    }
}
