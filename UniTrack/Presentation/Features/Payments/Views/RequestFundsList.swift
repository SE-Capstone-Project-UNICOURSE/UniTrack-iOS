//
//  RequestFundsList.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct RequestFundsList: View {
    @State var requestFundsItems = requestFunds
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Request Funds", secondItem: "")) {
            ForEach(requestFundsItems, id: \.self) { requestFundsItem in
                RequestFundsItem(requestFundsItems: requestFundsItem)
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor1)
        }
    }
}

struct RequestFundsList_Previews: PreviewProvider {
    static var previews: some View {
        RequestFundsList()
    }
}
