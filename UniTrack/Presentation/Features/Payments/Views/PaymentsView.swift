//
//  PaymentsView.swift
//  Finance
//
//  Created by UI8 on 09/10/2020.
//

import SwiftUI

struct PaymentsView: View {
    @State var searchText = ""
    @State var showProfile = false
    @State var showPaymentDetails = false
    @State var showInformation = false
    var body: some View {
        List {
            RecentPaymentsList()
            MyTemplatesList(showInformation: $showInformation)
            RequestFundsList()
        }
        .sheet(isPresented: $showInformation) {
            CarLoanPaymentView()
        }
        .overlay(button)
        .listStyle(InsetGroupedListStyle())
        .navigationTitle("Payments")
        .navigationBarItems(
            trailing: UserProfileImage()
                .onTapGesture {
                    self.showProfile.toggle()
                }
                .sheet(isPresented: $showProfile) {
                    ProfileView()
                }
        )
        .overlay(
            NavigationSearchBarView(text: $searchText, searchResultsContent: {
                List {
                    SearchResultsList()
                }
                .listStyle(InsetGroupedListStyle())
            })
            .frame(width: 0, height: 0)
        )
    }
    var button: some View {
        VStack(spacing: 0) {
            Spacer()
            HStack(spacing: 0) {
                Spacer()
                Button(action: {
                    self.showPaymentDetails.toggle()
                }) {
                    IconOnlyButton(icon: Icons.plusIcon, iconColor: Color.white, backgroundColor: Color(.systemIndigo))
                }
            }
        }
        .padding([.trailing, .bottom], 16)
        .sheet(isPresented: $showPaymentDetails) {
            PaymentDetailsView()
        }
    }
}

struct PaymentsView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentsView()
    }
}
