//
//  MyGoals.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct MyGoals: View {
    @State var savingsGoals = goals
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "My Goals", secondItem: "")) {
            VStack(spacing: 20) {
                SavingsGoalItem(savingsGoal: savingsGoals[0])
                SavingsGoalItem(savingsGoal: savingsGoals[1])
                SavingsGoalItem(savingsGoal: savingsGoals[2])
                SavingsGoalItem(savingsGoal: savingsGoals[3])
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct MyGoals_Previews: PreviewProvider {
    static var previews: some View {
        MyGoals()
    }
}
