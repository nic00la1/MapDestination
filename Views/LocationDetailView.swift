//
//  LocationDetailView.swift
//  MapDestination
//
//  Created by Nicola Kaleta on 03/03/2024.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    // MARK: - Properties
    @EnvironmentObject private var vm : LocationViewModel
    let location : Location
    
    // MARK: - Body
    var body: some View {
        ScrollView {
            VStack {
                imageSection
            }
        }
    }
}

#Preview {
    LocationDetailView(location: LocationDataService.locations.first!)
        .environmentObject(LocationViewModel())
}

extension LocationDetailView {
    // MARK: - Image Section
    
    private var imageSection : some View {
        TabView {
            ForEach(location.imageNames, id: \.self) {
                Image($0)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIDevice.current.userInterfaceIdiom == .pad ? nil : UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 500)
        .tabViewStyle(.page)
    }
}
