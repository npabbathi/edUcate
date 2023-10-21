//
//  ProfileView.swift
//  edUcate
//
//  Created by Nidhi Pabbathi on 10/21/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Text("NP")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(UColors.white)
                        .frame(width: 80, height: 80)
                        .background(UColors.blue)
                        .clipShape(Circle())
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Nidhi Pabbathi")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                            .foregroundColor(UColors.black)
                        Text("nidhi.pabbathi@utexas.edu")
                            .font(.footnote)
                            .tint(UColors.blue)
                    }
                }
                
            }
            
            Section("General") {
                HStack(spacing: 12) {
                    Image(systemName: "gear")
                        .foregroundColor(.blue)
                    Text("VERSION")
                        .kerning(3)
                        .foregroundColor(UColors.black)
                    
                    Spacer()
                    
                    Text("1.0.0")
                        .kerning(3)
                        .fontWeight(.light)
                        .foregroundColor(UColors.blue)
                    
                }
            }
            
            Section("Account") {
                Button {
                    print("sign out...")
                } label: {
                    HStack {
                        Image(systemName: "arrow.left.circle.fill")
                            .foregroundColor(UColors.blue)
                        Text("SIGN OUT")
                            .kerning(3)
                            .foregroundColor(UColors.black)
                    }
                }
                
                Button {
                    print("DELETE ACCOUNT")
                } label: {
                    HStack {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.red)
                        Text("DELETE ACCOUNT")
                            .kerning(3)
                            .foregroundColor(UColors.black)
                    }
                }

            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
