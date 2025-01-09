//
//  LoginForm.swift
//  Finance
//
//  Created by UI8 on 26/10/2020.
//

import SwiftUI

struct LoginForm: View {
    @State var emailAddress = ""
    @State var password = ""
    @State var goBack = false
    var body: some View {
        //This is a login form. You can modify what input fields it has and their content.
        Form {
            Section(header: Text("Email Address")) {
                TextField("Email address", text: $emailAddress)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
            }
            Section(header: Text("Password"), footer: forgotPassword) {
                SecureField("Password", text: $password)
            }
        }
    }
    var forgotPassword: some View {
        NavigationLink(destination: ForgotPasswordView(goBack: $goBack), isActive: $goBack) {
            IconTextLeftButton(text: "Forgot password?", textFont: .subheadline, icon: Icons.chevronRightIcon, iconSize: .system(size: 14, weight: .semibold, design: .default))
        }
    }
}

struct LoginForm_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm()
    }
}
