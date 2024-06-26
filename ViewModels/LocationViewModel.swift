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
        
        self.updateMapRegion(location : locations.first!)
    }
    
    // MARK: - Private Methods
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(center: mapLocation.coordinates, span: mapSpan)
        }
    }
    
    // MARK: - Actions
    func toggleLocationList() {
        withAnimation(.easeInOut) {
            showLocationList.toggle()
        }
    }
    
    func showNextLocation(location: Location) {
        withAnimation(.easeInOut) {
            mapLocation = location
            showLocationList = false
        }
    }
    
    func prevButtonPressed() {
        // get current index
        
        guard let currentIndex = locations.firstIndex( where: {$0 == mapLocation} ) else {
            print("Could not find current index in location array! Should never happen.")
            return
        }
        
        // check if the prev index is valid
        
        let prevIndex = currentIndex - 1
        guard locations.indices.contains(prevIndex) else {
            // Next index is not valid
            // Restart from last
            
            guard let lastLocation = locations.last else { return }
            showNextLocation(location: lastLocation)
            return
        }
        
        // prev index is valid
        
        let prevLocation = locations[prevIndex]
        showNextLocation(location: prevLocation)
    }
    
    func nextButtonPressed() {
        // get current index
        
        guard let currentIndex = locations.firstIndex( where: {$0 == mapLocation} ) else {
            print("Could not find current index in location array! Should never happen.")
            return
        }
        
        // check if the next index is valid
        
        let nextIndex = currentIndex + 1
        guard locations.indices.contains(nextIndex) else {
            // Next index is not valid
            // Restart from zero
            
            guard let firstLocation = locations.first else { return }
            showNextLocation(location: firstLocation)
            return
        }
        
        // next index is valid
        
        let nextLocation = locations[nextIndex]
        showNextLocation(location: nextLocation)
    }
}

    
