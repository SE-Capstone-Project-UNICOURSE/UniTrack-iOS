//
//  AddNewGoalView.swift
//  Finance
//
//  Created by UI8 on 26/10/2020.
//

import SwiftUI

struct AddNewGoalView: View {
    @Environment (\.presentationMode) var present
    var body: some View {
        NavigationView {
            NewGoalForm()
                .navigationBarTitle("Add new goal", displayMode: .inline)
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

struct AddNewGoalView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewGoalView()
    }
}
