//
//  SavingsGoals.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct SavingsGoals: View {
    var body: some View {
        Section {
            NavigationLink(destination: SavingsGoalsView()) {
                HStack(spacing: 15) {
                    IconBackground(icon: Icons.chartXaxisIcon, backgroundColor: Color(.systemIndigo))
                    ListItemTextContent(title: "Savings goals", bodyText: "Set and track your goals here")
                    Spacer()
                    HStack(spacing: 8) {
                        Text("4")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .frame(width: 28, height: 28)
                            .background(Color(.systemIndigo))
                            .clipShape(Circle())
                    }
                }
            }
            .hideSeparators(insets: EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16), rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct SavingsGoals_Previews: PreviewProvider {
    static var previews: some View {
        SavingsGoals()
    }
}
