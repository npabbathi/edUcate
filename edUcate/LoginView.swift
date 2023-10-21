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
                            .multilineTextAlignment(.center)
                            .kerning(5)
                            .shadow(radius: 5)
                        InputView(text: $password, placeholder: "PASSWORD", isSecureField: true)
                            .multilineTextAlignment(.center)
                            .kerning(5)
                            .shadow(radius: 5)
                    }
                    
                    Button {
                        print("logging in")
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

                    
                    Spacer()
                    
                    NavigationLink {
                        
                    } label: {
                        Text("NEW USER? **SIGN UP**")
                            .foregroundColor(UColors.teal)
                            .font(.caption)
                    }

                }
                .padding()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
