//
//  NewGoalForm.swift
//  Finance
//
//  Created by UI8 on 26/10/2020.
//

import SwiftUI

struct NewGoalForm: View {
    @State var title = ""
    @State var description = ""
    @State var goalAmount = ""
    @State var goalIcon: SavingGoalIcon = .first
    @State var goalColor: SavingGoalColor = .first
    var body: some View {
        Form {
            Section(header: Text("Title")) {
                TextField("Title", text: $title)
            }
            Section(header: Text("Description")) {
                TextField("Description", text: $description)
            }
            Section(header: Text("Amount")) {
                TextField("Amount", text: $goalAmount)
            }
            Section(header: Text("Color")) {
                Picker("Select color", selection: $goalColor) {
                    ForEach(SavingGoalColor.allCases, id: \.self) { color in
                        Circle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(color.color)
                            .tag(color)
                    }
                }
            }
            Section(header: Text("Icon")) {
                Picker("Select icon", selection: $goalIcon) {
                    ForEach(SavingGoalIcon.allCases, id: \.self) { icon in
                        Image(systemName: icon.iconName)
                            .font(.system(size: 13, weight: .medium, design: .default))
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .background(goalColor.color)
                            .clipShape(Circle())
                            .tag(icon)
                    }
                }
            }
        }
    }
}

struct NewGoalForm_Previews: PreviewProvider {
    static var previews: some View {
        NewGoalForm()
    }
}
