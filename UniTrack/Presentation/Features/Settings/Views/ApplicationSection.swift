//
//  ApplicationSection.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct ApplicationList: View {
    @State var items = settingsItems
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Application", secondItem: "")) {
            VStack(alignment: .leading, spacing: 20) {
                SettingsItem(settingsItems: items[5])
                SettingsItem(settingsItems: items[6])
                SettingsItem(settingsItems: items[7])
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct ApplicationList_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationList()
    }
}
