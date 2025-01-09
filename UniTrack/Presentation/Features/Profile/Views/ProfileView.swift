//
//  ProfileView.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct ProfileView: View {
    @Environment(\.presentationMode) var present
    var body: some View {
        NavigationView {
            List {
                UserSection()
                QuickActionsSection()
                OffersSection()
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Profile", displayMode: .inline)
            .navigationBarItems(
                leading:
                    Button(action: {
                        dismiss()
                    }) {
                        TertiaryButton(text: "Cancel", fontWeight: .regular)
                    },
                trailing:
                    Button(action: {
                        dismiss()
                        hapticFeedback(feedbackType: .success)
                    }) {
                        TertiaryButton(text: "Done", fontWeight: .semibold)
                    })
        }
    }
    func dismiss() {
        present.wrappedValue.dismiss()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
