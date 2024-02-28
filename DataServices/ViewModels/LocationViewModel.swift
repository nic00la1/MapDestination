//
//  LocationViewModel.swift
//  MapDestination
//
//  Created by Nicola Kaleta on 28/02/2024.
//

import Foundation
import SwiftUI
import MapKit

class LocationViewModel : ObservableObject {
    // MARK: - Properties
    
    // All loaded locations
    @Published var locations : [Location]
    
    // Current location on map
    @Published var mapLocation : Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    @Published var mapRegion : MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    // Show list of locations
    @Published var showLocationList : Bool = false
    
    // Show location details via sheet
    @Published var sheetLocation : Location? = nil
    
    // MARK: - Initialization
    
    init() {
        let locations = LocationDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
    }
}

