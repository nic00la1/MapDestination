//
//  Location.swift
//  MapDestination
//
//  Created by Nicola Kaleta on 28/02/2024.
//

import Foundation
import MapKit

struct Location : Identifiable, Equatable {
    // MARK: - Properties
    
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    // MARK: - Identifiable
    var id: String {
        // Generate a unique ID by combining name and city name
        name + cityName
    }
    
    // MARK: - Equeatable
    static func == (lhs : Location, rhs: Location) -> Bool {
        // Compare locations by their unique IDs
        lhs.id == rhs.id
    }
}
