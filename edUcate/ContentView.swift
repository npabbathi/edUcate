//
//  ContentView.swift
//  edUcate
//
//  Created by Nidhi Pabbathi on 10/21/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    var body: some View {
        NavigationStack {
            ZStack {
                UColors.green
                    .ignoresSafeArea()
                VStack {
                    Text("LOGIN")
                        .font(.largeTitle)
                        .kerning(3)
                        .bold()
                        .foregroundColor(UColors.white)
                    TextField("Username", text: $username)
                        .tint(UColors.white)
                        .background(UColors.white)
                    Image(systemName: "house.fill")
                        .foregroundColor(UColors.white)
                    NavigationLink("Lets go!", destination: BottomTabView())
                        .navigationBarBackButtonHidden(true)
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
