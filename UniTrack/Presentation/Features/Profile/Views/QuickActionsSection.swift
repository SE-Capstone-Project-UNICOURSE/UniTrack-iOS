//
//  QuickActionsSection.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct QuickActionsSection: View {
    @State var quickActionItems = actions
    var body: some View {
        Section(header: SectionHeader(title: "Quick actions")) {
            ForEach(quickActionItems, id: \.self) { quickActionItem in
                ProfileQuickActionItem(profileQuickActions: quickActionItem)
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor2)
        }
    }
}

struct QuickActionsSection_Previews: PreviewProvider {
    static var previews: some View {
        QuickActionsSection()
    }
}
