//
//  SavingsGoalItem.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct SavingsGoalItem: View {
    var savingsGoal: SavingGoals
    var body: some View {
        //This is savings goals item, you can modify the way it looks like from here if you wish.
        IconTextProgress(icon: savingsGoal.icon, iconBackground: savingsGoal.iconBackground, title: savingsGoal.title, bodyText: savingsGoal.description, amount: savingsGoal.currentAmount, fullAmount: savingsGoal.goalAmount, progress: savingsGoal.progress)
    }
}
