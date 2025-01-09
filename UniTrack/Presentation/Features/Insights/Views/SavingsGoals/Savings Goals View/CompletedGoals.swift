//
//  CompletedGoals.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct CompletedGoals: View {
    @State var savingsGoals = goals
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Completed Goals", secondItem: "")) {
            VStack(spacing: 20) {
                SavingsGoalItem(savingsGoal: savingsGoals[4])
                SavingsGoalItem(savingsGoal: savingsGoals[5])
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct CompletedGoals_Previews: PreviewProvider {
    static var previews: some View {
        CompletedGoals()
    }
}
