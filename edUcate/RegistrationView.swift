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
                            .multilineTextAlignment(.center)
                            .kerning(5)
                            .shadow(radius: 5)
                        
                        InputView(text: $fullname, placeholder: "FULL NAME")
                            .multilineTextAlignment(.center)
                            .kerning(5)
                            .shadow(radius: 5)
                        
                        InputView(text: $password, placeholder: "PASSWORD", isSecureField: true)
                            .multilineTextAlignment(.center)
                            .kerning(5)
                            .shadow(radius: 5)
                            .autocorrectionDisabled()
                        
                        InputView(text: $confirmPassword, placeholder: "CONFIRM PASSWORD", isSecureField: true)
                            .multilineTextAlignment(.center)
                            .kerning(5)
                            .shadow(radius: 5)
                    }
                    
                    Button {
                        print("signing user up")
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

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
