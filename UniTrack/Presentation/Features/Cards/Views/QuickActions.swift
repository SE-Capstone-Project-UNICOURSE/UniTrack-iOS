//
//  QuickActions.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct QuickActions: View {
    @State var quickActionItems = quickActions
    @State var showManageCardView = false
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Quick Actions", secondItem: "")) {
            VStack(spacing: 20) {
                CardsViewQuickActionItem(quickActionItems: quickActionItems[0])
                CardsViewQuickActionItem(quickActionItems: quickActionItems[1])
                CardsViewQuickActionItem(quickActionItems: quickActionItems[2])
                    .onTapGesture {
                        self.showManageCardView.toggle()
                    }
                    .sheet(isPresented: $showManageCardView) {
                        ManageCardView()
                    }
                CardsViewQuickActionItem(quickActionItems: quickActionItems[3])
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct QuickActions_Previews: PreviewProvider {
    static var previews: some View {
        QuickActions()
    }
}
