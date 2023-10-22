//
//  MapController.swift
//  edUcate
//
//  Created by Ananya Chintalapudi on 10/21/23.
//

import MapKit

class MapController: ObservableObject {
    var searchTerm = String()
    @Published var isActivismViewShowing = false
    @Published private(set) var activisms = [Activism]()
    @Published private(set) var selectedActivism: Activism?
    @Published private(set) var actions = [Action]()
    
    var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 30.28, longitude: -97.73), latitudinalMeters: 1600, longitudinalMeters: 1600)
    
    var selectedActivismName: String {
        guard let selectedActivism = selectedActivism else {return ""}
        return selectedActivism.name
    }
    
    var selectedActivismPlacemark: String {
        guard let selectedActivism = selectedActivism else {return "??"}
        return selectedActivism.placemark.title ?? "??"
    }
    
    func search() {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = searchTerm
        request.region = region
        
        let search = MKLocalSearch(request: request)
        search.start { response, error in
            guard let response = response else { return }
            
            DispatchQueue.main.async {
                self.activisms = response.mapItems.map {item in
                    Activism(name: item.name ?? "", placemark: item.placemark, coordinate: item.placemark.coordinate, phoneNumber: item.phoneNumber ?? "", website: item.url)
                }
            }
        }
        
        createActions()
        
    }
    
    func openMap(coordinate: CLLocationCoordinate2D) {
        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate))
        mapItem.openInMaps()
    }
    
    func setSelectedActivism(for activism : Activism) {
        selectedActivism = activism
        isActivismViewShowing.toggle()
    }
    
    func createActions() {
        actions = [
            Action(title: "Directions", image: "car.fill") { [weak self] in
                guard let self = self else {return}
                self.openMap(coordinate: self.selectedActivism!.coordinate)
            },
            Action(title: "Call", image: "phone.fill") { [weak self] in
                guard let self = self else { return }
                guard let phoneNumber = self.selectedActivism?.phoneNumber else { return }
                guard let url = URL(string: self.convertPhoneNumberFormat(phoneNumber: phoneNumber)) else { return }
                UIApplication.shared.open(url)
            },
            Action(title: "Website", image: "safari.fill") { [weak self] in
                guard let self = self else { return }
                guard let website = self.selectedActivism?.website else { return }
                UIApplication.shared.open(website)
            }
        ]
    }
    
    func convertPhoneNumberFormat(phoneNumber: String) -> String{
        let strippedPhoneNumber = phoneNumber
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .components(separatedBy: CharacterSet.decimalDigits.inverted)
            .joined()
        return "tel//\(strippedPhoneNumber)"
    }
}
