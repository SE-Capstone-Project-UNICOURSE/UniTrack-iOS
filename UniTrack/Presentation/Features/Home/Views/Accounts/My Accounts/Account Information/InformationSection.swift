//
//  InformationSection.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct InformationSection: View {
    @State var accountInformationItems = accountInformation
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Platinum Checking", secondItem: "")) {
            ForEach(accountInformationItems, id: \.self) { accountInformationItem in
                AccountInformationItem(accountInformationItem: accountInformationItem)
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor2)
        }
    }
}

struct InformationSection_Previews: PreviewProvider {
    static var previews: some View {
        InformationSection()
    }
}
