//
//  MyTemplatesList.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct MyTemplatesList: View {
    @State var myTemplateItems = myTemplates
    @Binding var showInformation: Bool
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "My Templates", secondItem: "")) {
            ForEach(myTemplateItems, id: \.self) { myTemplateItem in
                MyTemplateItem(myTemplateItems: myTemplateItem)
                    .onTapGesture {
                        self.showInformation.toggle()
                    }
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}
