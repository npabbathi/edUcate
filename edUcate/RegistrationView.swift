//
//  RegistrationView.swift
//  edUcate
//
//  Created by Nidhi Pabbathi on 10/21/23.
//

import SwiftUI

struct RegistrationView: View {
    
    @State var email = ""
    @State var fullname = ""
    @State var password = ""
    @State var confirmPassword = ""
    
    @EnvironmentObject var viewModel : AuthViewModel
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack {
            ZStack {
                UColors.blue
                    .ignoresSafeArea()
                VStack {
                    Text("ED**U**CATE")
                        .font(.largeTitle)
                        .kerning(10)
                        .foregroundColor(UColors.white)
                    ZStack {
                        UColors.white
                            .frame(width: 200, height: 200, alignment: .center)
                            .cornerRadius(200)
                        Spacer()
                        UColors.blue
                            .frame(width: 190, height: 190, alignment: .center)
                            .cornerRadius(200)
                    }
                    Spacer()
                    
                    VStack(spacing: 24) {
                        InputView(text: $email, placeholder: "EMAIL")
                            .autocorrectionDisabled()
                        
                        InputView(text: $fullname, placeholder: "FULL NAME")
                            .autocorrectionDisabled()
                        
                        InputView(text: $password, placeholder: "PASSWORD", isSecureField: true)
                            .autocorrectionDisabled()
                        
                        ZStack(alignment: .trailing) {
                            InputView(text: $confirmPassword, placeholder: "CONFIRM PASSWORD", isSecureField: true)
                            
                            if (!password.isEmpty && !confirmPassword.isEmpty) {
                                if (password == confirmPassword) {
                                    Image(systemName: "checkmark.circle.fill")
                                        .imageScale(.large)
                                        .fontWeight(.bold)
                                        .foregroundColor(.green)
                                        .padding()
                                } else {
                                    Image(systemName: "xmark.circle.fill")
                                        .imageScale(.large)
                                        .fontWeight(.bold)
                                        .foregroundColor(.red)
                                        .padding()
                                }
                            }
                        }
                    }
                    
                    Button {
                        Task {
                            try await viewModel.createUser(withEmail: email, password: password, fullname: fullname)
                        }
                    } label: {
                        HStack {
                            Text("SIGN UP")
                            Image(systemName: "arrow.right")
                        }
                    }
                    .foregroundColor(UColors.white)
                    .padding()
                    .padding(.horizontal, 40)
                    .background(UColors.teal)
                    .cornerRadius(40)
                    .padding()
                    .shadow(radius: 5)
                    .disabled(!formIsValid)
                    .opacity(formIsValid ? 1.0 : 0.5)
                    
                    
                    Spacer()
                    
                    Button {
                        dismiss()
                    } label: {
                        Text("ALREADY HAVE AN ACCOUNT?")
                            .foregroundColor(UColors.white)
                            .font(.title3)
                    }
                    
                }
                .padding(.horizontal, 40)
            }
        }
        
    }
}

extension RegistrationView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty && email.contains("@") && !password.isEmpty && password.count > 5 && !fullname.isEmpty && password == confirmPassword
    }
}
    

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
