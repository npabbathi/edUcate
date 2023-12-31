//
//  ProfileView.swift
//  edUcate
//
//  Created by Nidhi Pabbathi on 10/21/23.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    
    let backgroundColor : some View = UColors.green
    var body: some View {
        let user = viewModel.currentUser
        ZStack {
            UColors.black
                .ignoresSafeArea()
            List {
                Section {
                    HStack {
                        Text(user?.initals ?? User.MOCK_USER.initals)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(UColors.white)
                            .frame(width: 80, height: 80)
                            .background(UColors.teal)
                            .clipShape(Circle())
                        VStack(alignment: .leading, spacing: 4) {
                            Text(user?.fullname ?? User.MOCK_USER.fullname)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.top, 4)
                                .foregroundColor(UColors.white)
                            Text(user?.email ?? User.MOCK_USER.email)
                                .font(.footnote)
                                .foregroundColor(UColors.teal)
                        }
                    }
                    .padding(.vertical, 20)
                }
                .listRowBackground(backgroundColor)
                Section {
                    HStack(spacing: 12) {
                        Image(systemName: "gear")
                            .foregroundColor(.teal)
                        Text("VERSION")
                            .kerning(3)
                            .foregroundColor(UColors.white)
                        
                        Spacer()
                        
                        Text("1.0.0")
                            .kerning(3)
                            .fontWeight(.light)
                            .foregroundColor(UColors.white)
                        
                    }
                }
                .listRowBackground(backgroundColor)
                .padding(.vertical, 20)
                
                Section {
                    Button {
                        viewModel.signOut()
                    } label: {
                        HStack {
                            Image(systemName: "arrow.left.circle.fill")
                                .foregroundColor(.red)
                            Text("SIGN OUT")
                                .kerning(3)
                                .foregroundColor(UColors.white)
                        }
                    }
                }
                .listRowBackground(backgroundColor)
                .padding(.vertical, 20)
            }
            .scrollContentBackground(.hidden)
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(AuthViewModel())
    }
}
