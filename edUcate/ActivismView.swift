//
//  ActivismView.swift
//  edUcate
//
//  Created by Ananya Chintalapudi on 10/21/23.
//

import SwiftUI

struct ActivismView: View {
    @ObservedObject var mapController: MapController
    
    var body: some View {
        ZStack {
            UColors.black
                .ignoresSafeArea()
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text(mapController.selectedActivismName)
                            .font(.title)
                            .foregroundColor(UColors.white)
                        
                        Text(mapController.selectedActivismPlacemark)
                            .foregroundColor(UColors.white)
                    }
                    
                    Spacer()
                    
                    Button {
                        mapController.isActivismViewShowing.toggle()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.secondary)
                    }
                }
                
                HStack {
                    ForEach(mapController.actions) { action in
                        Button {
                            action.handler()
                        } label: {
                            VStack {
                                Image(systemName: action.image)
                                    .foregroundColor(UColors.teal)
                                    .padding(5)
                                Text(action.title)
                                    .foregroundColor(UColors.white)
                            }
                            .frame(maxWidth: .infinity)
                        }
                        .buttonStyle(.bordered)
                    }
                }
            }
            .padding()
        }
    }
}

struct ActivismView_Previews: PreviewProvider {
    static var previews: some View {
        ActivismView(mapController: MapController())
    }
}
