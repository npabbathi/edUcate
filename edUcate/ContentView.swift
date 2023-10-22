//
//  ContentView.swift
//  edUcate
//
//  Created by Nidhi Pabbathi on 10/21/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel : AuthViewModel
    var body: some View {
        Group {
            if (viewModel.userSession != nil) {
                BottomTabView()
            } else if (viewModel.userSession == nil) {
                LoginView()
            } else {
                ProfileView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
