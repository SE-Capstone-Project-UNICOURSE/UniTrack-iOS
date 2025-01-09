//
//  CardInformation.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct CardInformation: View {
    var body: some View {
        Section {
            IconText(icon: Icons.cardIcon, backgroundColor: Color(.systemIndigo), title: "VISA *4832", bodyText: "Debit card valid until May 2025", doesHaveANavigationLink: false)
            .hideSeparators(insets: EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16), rowBackground: Color.listRowBackgroundColor2)
        }
    }
}

struct CardInformation_Previews: PreviewProvider {
    static var previews: some View {
        CardInformation()
    }
}
