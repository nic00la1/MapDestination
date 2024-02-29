//
//  LocationsListView.swift
//  MapDestination
//
//  Created by Nicola Kaleta on 29/02/2024.
//

import SwiftUI

struct LocationsListView: View {
    // MARK: - Properties
    @EnvironmentObject private var vm : LocationViewModel
    
    // MARK: - Body
    var body: some View {
        List {
            ForEach(vm.locations) { location in
                Button {
                    vm.showNextLocation(location: location)
                } label: {
                    listRowView(location: location)
                }
            }
        }
    }
}

#Preview {
    LocationsListView()
        .environmentObject(LocationViewModel())
}

extension LocationsListView {
    // MARK: - List Row View
    private func listRowView(location: Location) -> some View {
        HStack {
            // Display location image if available
            if let imageNames = location.imageNames.first {
                Image(imageNames)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .cornerRadius(10)
            }
        }
    }
}
