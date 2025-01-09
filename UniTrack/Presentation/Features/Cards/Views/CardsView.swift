//
//  CardsView.swift
//  Finance
//
//  Created by UI8 on 09/10/2020.
//

import SwiftUI

struct CardsView: View {
    @State var showProfile = false
    var body: some View {
        List {
            CardsSection()
            Transactions()
            QuickActions()
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Cards")
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
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
