//
//  GeneralList.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct GeneralList: View {
    @State var items = settingsItems
    @State var showPersonalDetailsView = false
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "General", secondItem: "")) {
            VStack(alignment: .leading, spacing: 20) {
                SettingsItem(settingsItems: items[0])
                SettingsItem(settingsItems: items[1])
                SettingsItem(settingsItems: items[2])
                SettingsItem(settingsItems: items[3])
            }
            .onTapGesture {
                self.showPersonalDetailsView.toggle()
            }
            .sheet(isPresented: $showPersonalDetailsView) {
                PersonalDetailsView()
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct GeneralList_Previews: PreviewProvider {
    static var previews: some View {
        GeneralList()
    }
}
