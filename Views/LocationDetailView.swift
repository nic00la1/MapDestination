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
                    .shadow(color: .black.opacity(0.3), radius: 20, y: 10)
                
                VStack(alignment: .leading, spacing: 16) {
                    titleSection
                    Divider()
                    descriptionSection
                    Divider()
                    mapLayer
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
        .ignoresSafeArea()
        .background(.ultraThinMaterial)
        .overlay(alignment: .topLeading) {
            backButton
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
    // MARK: - Title Section
    
    private var titleSection : some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(location.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text(location.cityName)
                .font(.title3)
                .foregroundColor(.secondary)
        }
    }
    
    // MARK: - Description Section
    private var descriptionSection : some View {
        VStack(alignment: .leading, spacing: 8) {
            VStack(alignment: .leading, spacing: 8) {
                Text(location.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                if let url = URL(string: location.link) {
                    Link("Read More on Wikipedia", destination: url)
                        .font(.headline)
                        .tint(.blue)
                }
            }
        }
    }
    
    // MARK: - Map Section
    
    private var mapLayer: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(
            center: location.coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))),
            annotationItems: [location]){ location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .shadow(radius: 10)
            }
        }
            .allowsHitTesting(false)
            .aspectRatio(1, contentMode: .fit)
            .cornerRadius(30)
    }
    
    // MARK: - Back Button
    
    private var backButton : some View {
        Button {
            vm.sheetLocation = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(.primary)
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }
    }
}
