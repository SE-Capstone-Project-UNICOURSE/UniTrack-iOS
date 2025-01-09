//
//  SignUpForm.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

struct SignUpForm: View {
    @State var emailAddress = ""
    @State var fullName = ""
    @State var streetName = ""
    @State var allStates = states
    @State var selectedState: USStates = states[0]
    @State var zipCode = ""
    var body: some View {
        //This is a sign up form. You can modify what input fields it has and their content.
        Form {
            Section(header: Text("Email Address")) {
                TextField("Email address", text: $emailAddress)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
            }
            Section(header: Text("Full Name")) {
                TextField("Full name", text: $fullName)
            }
            Section(header: Text("Street Name")) {
                TextField("Street name", text: $streetName)
            }
            Section(header: Text("State")) {
                Picker("Select state", selection: $selectedState) {
                    ForEach(allStates, id: \.self) { state in
                        HStack(spacing: 12) {
                            Image(systemName: Icons.locationIcon)
                                .font(.system(size: 12, weight: .medium, design: .default))
                                .foregroundColor(.white)
                                .frame(width: 28, height: 28)
                                .background(Color(.systemIndigo))
                                .clipShape(Circle())
                            Text(state.name)
                                .font(.subheadline)
                                .fontWeight(.medium)
                                .foregroundColor(.primary)
                        }
                        .tag(state)
                    }
                }
            }
            Section(header: Text("ZIP Code")) {
                TextField("ZIP code", text: $zipCode)
            }
        }
    }
}
