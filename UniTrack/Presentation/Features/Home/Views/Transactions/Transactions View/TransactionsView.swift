//
//  TransactionsView.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct TransactionsView: View {
    @State var transactionItems = transactionViewTransactions
    @State var showInformation = false
    var body: some View {
        List {
            TodayTransactions()
            OctoberTransactions()
            SeptemberTransactions()
        }
        .listStyle(InsetGroupedListStyle())
        .onTapGesture {
            self.showInformation.toggle()
        }
        .sheet(isPresented: $showInformation) {
            TransactionInformationView()
        }
        .navigationTitle("Transactions")
    }
}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView()
    }
}
