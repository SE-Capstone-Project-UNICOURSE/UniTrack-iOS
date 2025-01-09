//
//  MyBillsSection.swift
//  Finance
//
//  Created by UI8 on 19/10/2020.
//

import SwiftUI

struct MyBillsSection: View {
    @State var billItems = bills
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "My Bills", secondItem: "")) {
            VStack(spacing: 20) {
                BillItem(billItems: bills[0])
                BillItem(billItems: bills[1])
                BillItem(billItems: bills[2])
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct MyBillsSection_Previews: PreviewProvider {
    static var previews: some View {
        MyBillsSection()
    }
}
