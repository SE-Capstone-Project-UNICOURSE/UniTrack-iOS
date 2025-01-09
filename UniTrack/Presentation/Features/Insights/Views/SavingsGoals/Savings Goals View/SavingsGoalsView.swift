//
//  SavingsGoalsView.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct SavingsGoalsView: View {
    @State var showAddNewGoal = false
    var body: some View {
        List {
            MyGoals()
            CompletedGoals()
        }
        .listStyle(InsetGroupedListStyle())
        .overlay(button)
        .navigationTitle("Savings goals")
    }
    var button: some View {
        VStack(spacing: 0) {
            Spacer()
            HStack(spacing: 0) {
                Spacer()
                Button(action: {
                    self.showAddNewGoal.toggle()
                }) {
                    IconOnlyButton(icon: Icons.plusIcon, iconColor: Color.white, backgroundColor: Color(.systemIndigo))
                }
            }
        }
        .padding([.trailing, .bottom], 16)
        .sheet(isPresented: $showAddNewGoal) {
            AddNewGoalView()
        }
    }
}

struct SavingsGoalsView_Previews: PreviewProvider {
    static var previews: some View {
        SavingsGoalsView()
    }
}
