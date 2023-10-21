//
//  BottomTabView.swift
//  edUcate
//
//  Created by Nidhi Pabbathi on 10/21/23.
//

import SwiftUI

struct BottomTabView: View {
    var body: some View {
        Home()
    }
}

struct BottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabView()
    }
}

struct Home: View {
    @State var selectedTab = "person.fill"
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            TabView(selection: $selectedTab) {
                HomeView()
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("house.fill")
                SearchView()
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("magnifyingglass")
                MapView()
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("map.fill")
                ChatView()
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("bubble.right.fill")
                ProfileView()
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("person.fill")
            }
            
            HStack {
                ForEach(tabs, id: \.self) { image in
                    Button {
                        withAnimation(.spring()) {
                            selectedTab = image
                        }
                    } label: {
                        Image(systemName: image)
                            .foregroundColor(selectedTab == image ? getColor(image: image) : UColors.green)
                    }

                
                    if image != tabs.last {
                        Spacer(minLength: 0)
                    }
                }
            }
            .padding(.horizontal, 30)
            .padding(.vertical)
            .background(UColors.white)
            .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
        }
    }
    
    func getColor(image: String) -> Color {
        switch image {
        case "house.fill":
            return UColors.teal
        case "magnifyingglass":
            return UColors.teal
        case "map.fill":
            return UColors.teal
        case "person.fill":
            return UColors.teal
        case "bubble.right.fill":
            return UColors.teal
        default:
            return Color.red //error
        }
        
    }
}

var tabs = ["house.fill", "magnifyingglass", "map.fill", "bubble.right.fill", "person.fill"]
