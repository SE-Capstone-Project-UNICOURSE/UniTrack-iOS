//
//  PersonalDetailsView.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct PersonalDetailsView: View {
    @Environment(\.presentationMode) var present
    var body: some View {
        NavigationView {
            List {
                PersonalDetailsProfileImage()
                PersonalDetailsForm()
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Personal details", displayMode: .inline)
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
                    }
            )
        }
    }
    func dismiss() {
        present.wrappedValue.dismiss()
    }
}

struct PersonalDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDetailsView()
    }
}
