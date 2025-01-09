//
//  AllBillsSection.swift
//  Finance
//
//  Created by UI8 on 19/10/2020.
//

import SwiftUI

struct AllBillsSection: View {
    @State var billItems = bills
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "All Bills", secondItem: "")) {
            VStack(spacing: 20) {
                BillItem(billItems: bills[3])
                BillItem(billItems: bills[4])
                BillItem(billItems: bills[5])
                BillItem(billItems: bills[6])
                BillItem(billItems: bills[7])
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct AllBillsSection_Previews: PreviewProvider {
    static var previews: some View {
        AllBillsSection()
    }
}
