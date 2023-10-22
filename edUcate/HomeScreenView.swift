//
//  HomeScreenView.swift
//  edUcate
//
//  Created by Banah Daniella Abdeljaber on 10/21/23.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        TabView {
            NewsTabView()
                .tabItem {
                    Label("News", systemImage: "newspaper")
                }
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
