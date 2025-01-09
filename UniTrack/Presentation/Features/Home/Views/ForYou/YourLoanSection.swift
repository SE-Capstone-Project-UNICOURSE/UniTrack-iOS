//
//  YourLoanSection.swift
//  Finance
//
//  Created by UI8 on 19/10/2020.
//

import SwiftUI

struct YourLoanSection: View {
    @State var loanInformationItems = loanInformation
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Your Loan", secondItem: "")) {
            ForEach(loanInformationItems, id: \.self) { loanInformationItem in
                LoanInformationItem(loanInformationItems: loanInformationItem)
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor2)
        }
    }
}

struct YourLoanSection_Previews: PreviewProvider {
    static var previews: some View {
        YourLoanSection()
    }
}
