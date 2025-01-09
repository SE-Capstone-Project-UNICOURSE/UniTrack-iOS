//
//  HomeView.swift
//  Finance
//
//  Created by UI8 on 09/10/2020.
//

import SwiftUI

struct HomeView: View {
    @State private var showProfile = false
    @State var searchText = ""
    @State var showTransactionInformation = false
    var body: some View {
        List {
            AccountSection()
            TransactionSection(showTransactionInformation: $showTransactionInformation)
            ForYouSection()
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Home")
        .navigationBarItems(
            trailing:
                UserProfileImage()
                .onTapGesture {
                    self.showProfile.toggle()
                }
                .sheet(isPresented: $showProfile) {
                    ProfileView()
                }
        )
        .overlay(
            NavigationSearchBarView(text: $searchText, searchResultsContent: {
                List {
                    SearchResultsList()
                }
                .listStyle(InsetGroupedListStyle())
            })
            .frame(width: 0, height: 0)
        )
        .sheet(isPresented: $showTransactionInformation) {
            TransactionInformationView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
