//
//  Information.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct Information: View {
    @State var informationItems = transactinInformation
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Information", secondItem: "")) {
            ForEach(informationItems, id: \.self) { informationItem in
                TransactionInformationItem(information: informationItem)
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor2)
        }
    }
}

struct Information_Previews: PreviewProvider {
    static var previews: some View {
        Information()
    }
}
