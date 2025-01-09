//
//  AccountSection.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI
import Pages

struct AccountSection: View {
    @State var accountItems = accounts
    @State var currentAccount = 0
    @State var showAccountInformation = false
    var body: some View {
        Section(header: sectionHeader) {
            Pages(currentPage: $currentAccount, navigationOrientation: .horizontal,hasControl: false, controlAlignment: .center) {
                AccountItem(accountItem: accountItems[0])
                AccountItem(accountItem: accountItems[1])
                AccountItem(accountItem: accountItems[2])
                AccountItem(accountItem: accountItems[3])
            }
            .onTapGesture {
                self.showAccountInformation.toggle()
            }
            .sheet(isPresented: $showAccountInformation) {
                AccountView()
            }
            .frame(height: 40)
            .hideSeparators(insets: EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16), rowBackground: Color.listRowBackgroundColor1)
        }
    }
    var sectionHeader: some View {
        HStack(spacing: 0) {
            Text("My accounts")
                .font(.title3)
                .fontWeight(.semibold)
                .textCase(.none)
                .foregroundColor(.primary)
            Spacer()
            NavigationLink(destination: MyAccountsView()) {
                IconTextLeftButton(text: "See all", textFont: .subheadline, icon:Icons.chevronRightIcon, iconSize: .system(size: 15, weight:.semibold, design: .default))
            }
        }
        .frame(width: UIScreen.main.bounds.width-32)
        .padding(.bottom, 8)
    }
}

struct AccountSection_Previews: PreviewProvider {
    static var previews: some View {
        AccountSection()
    }
}
