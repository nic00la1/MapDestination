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
                titleSection
            }
            VStack(spacing: 8) {
                learnMoreButton
                HStack(spacing: 5) {
                    prevButton
                    nextButton
                }
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
    
    // MARK: - Title Section
    
    private var titleSection : some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(location.name)
                .font(.title2.bold())
            Text(location.cityName)
                .font(.subheadline)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    // MARK: - Learn More Button
    
    private var learnMoreButton : some View {
        Button {
            vm.sheetLocation = location
        } label: {
            Text("Learn More")
                .frame(width: 125, height: 35)
        }
        .buttonStyle(.borderedProminent)
    }
    
    // MARK: - Next Button
    private var nextButton : some View {
        Button {
            vm.nextButtonPressed()
        } label: {
            Text("Next")
                .frame(width: 50, height: 35)
        }
        .buttonStyle(.bordered)
    }
    
    // MARK: - Prev Button
    private var prevButton : some View {
        Button {
            vm.prevButtonPressed()
        } label: {
            Text("Prev")
                .frame(width: 50, height: 35)
        }
        .buttonStyle(.bordered)
    }
}
