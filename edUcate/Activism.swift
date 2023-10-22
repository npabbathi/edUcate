//
//  Business.swift
//  edUcate
//
//  Created by Ananya Chintalapudi on 10/21/23.
//

import Foundation
import MapKit

struct Activism: Identifiable {
    let id = UUID()
    let name: String
    let placemark: MKPlacemark
    let coordinate: CLLocationCoordinate2D
    let phoneNumber: String
    let website: URL?
}
