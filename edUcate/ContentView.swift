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
                    ZStack {
                        UColors.white
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
                    
                    NavigationLink("GO", destination: LoginView())
                        .navigationBarBackButtonHidden(true)
                        .buttonStyle(.bordered)
                        .tint(UColors.white)
                        .bold()
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
