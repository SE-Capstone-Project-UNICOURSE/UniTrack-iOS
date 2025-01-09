//
//  SettingsView.swift
//  Finance
//
//  Created by UI8 on 09/10/2020.
//

import SwiftUI

struct SettingsView: View {
    @State var showProfile = false
    var body: some View {
        List {
            GeneralList()
            ManageCardsList()
            ApplicationList()
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Settings")
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

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
