//
//  LocationPreviewView.swift
//  MapDestination
//
//  Created by Nicola Kaleta on 29/02/2024.
//

import SwiftUI

struct LocationPreviewView: View {
    // MARK: - Properties
    @EnvironmentObject private var vm : LocationViewModel
    let location : Location
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .bottom, spacing: 0) {
            VStack(alignment: .leading, spacing: 16) {
                imageSection
            }
        }
    }
}

#Preview {
    ZStack {
        Color.green.ignoresSafeArea()
        LocationPreviewView(location: LocationDataService.locations.first!)
            .padding()
        
    }
}

extension LocationPreviewView {
    
    // MARK: - Image Section
    private var imageSection : some View {
        ZStack {
            if let imageName = location.imageNames.first {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
        }
        .padding(6)
        .background(.white)
        .cornerRadius(10)
    }
    
    
}
