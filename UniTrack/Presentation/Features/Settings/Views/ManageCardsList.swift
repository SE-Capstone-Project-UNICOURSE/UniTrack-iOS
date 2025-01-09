//
//  ManageCardsList.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct ManageCardsList: View {
    @State var items = settingsItems
    var body: some View {
        Section {
            SettingsItem(settingsItems: items[4])
                .hideSeparators(insets: EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16), rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct ManageCardsList_Previews: PreviewProvider {
    static var previews: some View {
        ManageCardsList()
    }
}
