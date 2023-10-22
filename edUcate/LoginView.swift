//
//  LoginView.swift
//  edUcate
//
//  Created by Nidhi Pabbathi on 10/21/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    @EnvironmentObject var viewModel : AuthViewModel
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                UColors.green
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    ZStack {
                        UColors.teal
                            .frame(width: 200, height: 200, alignment: .center)
                            .cornerRadius(200)
                        UColors.green
                            .frame(width: 190, height: 190, alignment: .center)
                            .cornerRadius(200)
                    }
                    Text("ED**U**CATE")
                        .font(.largeTitle)
                        .kerning(10)
                        .foregroundColor(UColors.white)
                    
                    
                    VStack(spacing: 24) {
                        InputView(text: $email, placeholder: "EMAIL")
                            .autocorrectionDisabled()
                        InputView(text: $password, placeholder: "PASSWORD", isSecureField: true)
                            .autocorrectionDisabled()
                    }
                    
                    Button {
                        Task {
                            try await viewModel.signIn(withEmail: email, password: password)
                        }
                    } label: {
                        HStack {
                            Text("LOGIN")
                            Image(systemName: "arrow.right")
                        }
                    }
                    .foregroundColor(UColors.white)
                    .padding()
                    .padding(.horizontal, 40)
                    .background(UColors.blue)
                    .cornerRadius(40)
                    .padding()
                    .shadow(radius: 5)
                    .disabled(!formIsValid)
                    .opacity(formIsValid ? 1.0 : 0.5)

                    
                    Spacer()
                    
                    NavigationLink {
                        RegistrationView()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Text("NEW USER? **SIGN UP**")
                            .foregroundColor(UColors.teal)
                            .font(.title3)
                    }

                }
                .padding(.horizontal, 40)
            }
        }
        .tint(.white)
    }
}

extension LoginView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty && email.contains("@") && !password.isEmpty && password.count > 5
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
