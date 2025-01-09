//
//  LoanInformationItem.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct LoanInformationItem: View {
    var loanInformationItems: LoanInformation
    var body: some View {
        //This is loan information item, you can modify the way it looks like from here if you wish.
        IconTextProgress(icon: loanInformationItems.icon, iconBackground: loanInformationItems.iconBackground, title: loanInformationItems.title, bodyText: loanInformationItems.bodyText, amount: loanInformationItems.amount, fullAmount: loanInformationItems.fullAmount, progress: loanInformationItems.progress)
    }
}
