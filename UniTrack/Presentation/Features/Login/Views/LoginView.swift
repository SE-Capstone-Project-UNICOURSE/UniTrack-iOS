import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var rememberMe: Bool = false
    @State private var isPasswordVisible: Bool = false
    @EnvironmentObject var viewRouter: ViewRouter
    
    var body: some View {
        VStack(spacing: 20) {
            // Logo and title
            VStack(spacing: 10) {
                Image(.launchLogo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150)
                
                Text("Let’s continue manage your business")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                
                Text("Your business is waiting for you")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            // Email and Password Fields
            VStack(spacing: 20) {
                TextField("Email", text: $email)
                    .keyboardType(.emailAddress)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                
                ZStack {
                    if isPasswordVisible {
                        TextField("Password", text: $password) // Plain text for password if visible
                          
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                    } else {
                        SecureField("Password", text: $password) // Secure text for password when hidden
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                    }

                    HStack {
                        Spacer()
                        Button(action: {
                            isPasswordVisible.toggle() // Toggle password visibility
                        }) {
                            Image(systemName: isPasswordVisible ? "eye" : "eye.slash") // Toggle icon
                                .foregroundColor(.gray)
                                .padding(.trailing, 10)
                        }
                    }
                }
            }
            
            // Remember me and Forgot password
            HStack {
                Toggle(isOn: $rememberMe) {
                    Text("Remember me")
                }
                .toggleStyle(CheckboxToggleStyle())
                
                Spacer()
                
                Button(action: {
                    // Forgot password action
                }) {
                    Text("Forgot password?")
                        .foregroundColor(.red)
                        .font(.subheadline)
                }
            }
            
            MainButton(title: "Sign In") {
                viewRouter.currentView = "tabBarView"
            }
            
            DividerCustomView(text: "Or")
            
            // Social Sign-In Buttons
            HStack(spacing: 20) {
                Button(action: {}, label: {
                    Image(.facebookIcon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                        .clipShape(Circle())
                        .padding(10)
                        .overlay(
                            Circle()
                                .stroke(Color.gray, lineWidth: 0.5)
                        )
                        .background(Color.white)
                        .cornerRadius(30)
                })
                
                Button(action: {}, label: {
                    Image(.googleIcon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                        .clipShape(Circle())
                        .padding(10)
                        .overlay(
                            Circle()
                                .stroke(Color.gray, lineWidth: 0.5)
                        )
                        .background(Color.white)
                        .cornerRadius(30)
                })
                
                Button(action: {}, label: {
                    Image(.appleIconLightMode)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30)
                        .clipShape(Circle())
                        .padding(10)
                        .overlay(
                            Circle()
                                .stroke(Color.gray, lineWidth: 0.5)
                        )
                        .background(Color.white)
                        .cornerRadius(30)
                })
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct CheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                .foregroundColor(configuration.isOn ? .blue : .gray)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            configuration.label
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
