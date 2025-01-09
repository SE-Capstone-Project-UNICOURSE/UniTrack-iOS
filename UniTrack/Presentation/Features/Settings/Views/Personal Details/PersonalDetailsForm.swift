//
//  PersonalDetailsForm.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct PersonalDetailsForm: View {
    @State var fullName = "Mark Smith"
    var streetNames = ["Great Street"]
    @State var selectedStreet = 0
    @State var phoneNumber = "+ 1 (234) 5098761"
    @State var emailAddress = "marksmith@gmail.com"
    var body: some View {
        Section(header: Text("Full Name")) {
            TextField("Full name", text: $fullName)
        }
        Section(header: Text("Primary Address")) {
            Picker("Select address", selection: $selectedStreet) {
                ForEach(0 ..< streetNames.count) { streetName in
                    HStack(spacing: 8) {
                        Image(systemName: Icons.buildingIcon)
                            .font(.system(size: 12, weight: .medium, design: .default))
                            .foregroundColor(.white)
                            .frame(width: 28, height: 28)
                            .background(Color(.systemIndigo))
                            .clipShape(Circle())
                        Text(self.streetNames[streetName])
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .foregroundColor(.primary)
                    }
                    .tag(streetName)
                }
            }
        }
        Section(header: Text("Phone Number")) {
            TextField("Phone number", text: $phoneNumber)
        }
        Section(header: Text("Email Address")) {
            TextField("Email address", text: $emailAddress)
        }
    }
}

struct PersonalDetailsForm_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDetailsForm()
    }
}
