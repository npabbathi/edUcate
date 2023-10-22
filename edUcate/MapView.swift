//
//  MapView.swift
//  edUcate
//
//  Created by Nidhi Pabbathi on 10/21/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @ObservedObject var mapController: MapController
    
    var body: some View {
        ZStack {
            UColors.black
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("ED**U**CATE **4**ALL")
                            .font(.largeTitle)
                            .kerning(9)
                            .foregroundColor(UColors.white)
                    Spacer()
                }.padding()
                
                Map(coordinateRegion: $mapController.region, annotationItems: mapController.activisms) { activism in
                    MapAnnotation(coordinate: activism.coordinate) {
                        Image(systemName: "mappin.and.ellipse")
                            .font(.title)
                            .foregroundColor(.pink)
                            .onTapGesture {
                                mapController.setSelectedActivism(for: activism)
                            }
                    }
                }
                .sheet(isPresented: $mapController.isActivismViewShowing) {
                    ActivismView(mapController: mapController)
                        .presentationDetents([.fraction(0.27), .large])
                }
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(mapController: MapController())
    }
}
