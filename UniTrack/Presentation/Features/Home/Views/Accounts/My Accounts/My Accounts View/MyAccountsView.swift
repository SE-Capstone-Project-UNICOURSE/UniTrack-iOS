//
//  MyAccountsView.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct MyAccountsView: View {
    @State var accountItems = accounts
    @State var showAccountInformation = false
    var body: some View {
        List {
            CheckingAccounts()
            SavingsAccounts()
            MortgageAccounts()
        }
        .listStyle(InsetGroupedListStyle())
        .buttonStyle(PlainButtonStyle())
        .onTapGesture {
            self.showAccountInformation.toggle()
        }
        .sheet(isPresented: $showAccountInformation) {
            AccountView()
        }
        .navigationTitle("My accounts")
    }
}

struct MyAccountsView_Previews: PreviewProvider {
    static var previews: some View {
        MyAccountsView()
    }
}
