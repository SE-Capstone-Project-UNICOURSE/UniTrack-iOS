//
//  AccountQuickActionsSection.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct AccountQuickActionsSection: View {
    @State var accountQuickActionItems = accountQuickActions
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Quick Actions", secondItem: "")) {
            ForEach(accountQuickActionItems, id: \.self) { accountQuickActionItem in
                AccountQuickActionItem(accountQuickActionItem: accountQuickActionItem)
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor2)
        }
    }
}

struct AccountQuickActionsSection_Previews: PreviewProvider {
    static var previews: some View {
        AccountQuickActionsSection()
    }
}
