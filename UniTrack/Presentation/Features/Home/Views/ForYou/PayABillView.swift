//
//  PayABillView.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct PayABillView: View {
    @State var showInformation = false
    var body: some View {
        List {
            MyBillsSection()
            AllBillsSection()
        }
        .listStyle(InsetGroupedListStyle())
        .onTapGesture {
            self.showInformation.toggle()
        }
        .sheet(isPresented: $showInformation) {
            CarLoanPaymentView()
        }
        .navigationTitle("Pay a bill")
    }
}

struct PayABillView_Previews: PreviewProvider {
    static var previews: some View {
        PayABillView()
    }
}
