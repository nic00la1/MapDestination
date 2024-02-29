//
//  LocationsView.swift
//  MapDestination
//
//  Created by Nicola Kaleta on 29/02/2024.
//

import SwiftUI
import MapKit

struct LocationsView: View {
    // MARK: - Properties
    @EnvironmentObject private var vm: LocationViewModel
    let maxWithForIpad : CGFloat = 700
    
    // MARK: - Body
    var body: some View {
        ZStack {
            mapLayer
                .ignoresSafeArea()
        }
    }
}

#Preview {
    LocationsView()
}

extension LocationsView {
    // MARK: - Map Layer
    private var mapLayer: some View {
        Map(coordinateRegion: $vm.mapRegion,
            annotationItems: vm.locations
        ){
            location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .
            }
        }
    }
}
