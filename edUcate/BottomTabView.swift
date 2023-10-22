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
    @StateObject var mapController = MapController()
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)){
            TabView(selection: $selectedTab) {
                List {
                    HomeView(article: .previewData[0])
                        .listRowInsets(.init(top:0, leading: 0, bottom: 0, trailing: 0))
                }
                .listStyle(.plain)
                .tag("house.fill")
                NavigationStack {
                    MapView(mapController: mapController)
                }
                    .searchable(text: $mapController.searchTerm)
                    .foregroundColor(UColors.white)
                    .onSubmit(of: .search) {
                        mapController.search()
                    }
                NewsTabView()
                    .tag("graduationcap.fill")
                    .tag("map.fill")
                ChatView(text: .constant(""))
                    .tag("bubble.right.fill")
                ProfileView()
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
                            .foregroundColor(selectedTab == image ? getColor(image: image) : UColors.white)
                    }

                
                    if image != tabs.last {
                        Spacer(minLength: 0)
                    }
                }
            }
            .padding(.horizontal, 30)
            .padding(.vertical)
            .background(UColors.black)
            .cornerRadius(12)
            .padding(.horizontal)
        }
    }
    
    func getColor(image: String) -> Color {
        switch image {
        case "house.fill":
            return UColors.teal
        case "graduationcap.fill":
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

var tabs = ["house.fill", "graduationcap.fill", "map.fill", "bubble.right.fill", "person.fill"]
