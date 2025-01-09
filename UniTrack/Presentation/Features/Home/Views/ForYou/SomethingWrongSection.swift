//
//  SomethingWrongSection.swift
//  Finance
//
//  Created by UI8 on 19/10/2020.
//

import SwiftUI

struct SomethingWrongSection: View {
    var body: some View {
        Section {
            IconTextButton(icon: Icons.optionsIcon, iconBackground: Color(.systemIndigo), title: "Something wrong?", bodyText: "Just edit the details here", doesHaveAButton: true, buttonText: "Edit", doesHaveAToggle: false)
                .hideSeparators(insets: EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16), rowBackground: Color.listRowBackgroundColor2)
        }
    }
}

struct SomethingWrongSection_Previews: PreviewProvider {
    static var previews: some View {
        SomethingWrongSection()
    }
}
