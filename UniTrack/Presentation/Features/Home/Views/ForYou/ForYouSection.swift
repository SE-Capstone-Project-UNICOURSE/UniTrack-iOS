//
//  ForYouSection.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

struct ForYouSection: View {
    @State var forYou = forYourItems
    var body: some View {
        Section(header: SectionHeader(title: "For you")) {
            ForEach(forYou, id: \.self) { forYouItem in
                NavigationLink(destination: PayABillView()) {
                    ForYouItem(forYouItem: forYouItem)
                }
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}
