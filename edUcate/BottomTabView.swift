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
                MajorNewsHomeView()
                .tag("house.fill")
                NavigationStack {
                    MapView(mapController: mapController)
                }
                .searchable(text: $mapController.searchTerm)
                .foregroundColor(UColors.white)
                .onSubmit(of: .search) {
                    mapController.search()
                }
                .tag("map.fill")
                NewsTabView()
                    .tag("graduationcap.fill")
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
            .background(UColors.blue)
            .cornerRadius(12)
            .padding(.horizontal)
        }
    }
    
    func getColor(image: String) -> Color {
        let selectedColor : some View = Color("ULightTeal")
        switch image {
        case "house.fill":
            return selectedColor as! Color
        case "graduationcap.fill":
            return selectedColor as! Color
        case "map.fill":
            return selectedColor as! Color
        case "person.fill":
            return selectedColor as! Color
        case "bubble.right.fill":
            return selectedColor as! Color
        default:
            return Color.red //error
        }
        
    }
}

var tabs = ["house.fill", "graduationcap.fill", "map.fill", "bubble.right.fill", "person.fill"]
