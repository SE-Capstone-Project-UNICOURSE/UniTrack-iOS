//
//  InsightsView.swift
//  Finance
//
//  Created by UI8 on 09/10/2020.
//

import SwiftUI

struct InsightsView: View {
    @State var showProfile = false
    @State var showInformation = false
    var body: some View {
        List {
            Graph()
            SavingsGoals()
            SpendingCategories(showInformation: $showInformation)
        }
        .sheet(isPresented: $showInformation) {
            SpendingCategoryView()
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Insights")
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

struct InsightsView_Previews: PreviewProvider {
    static var previews: some View {
        InsightsView()
    }
}
