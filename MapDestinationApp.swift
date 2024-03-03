//
//  MapDestinationApp.swift
//  MapDestination
//
//  Created by Nicola Kaleta on 28/02/2024.
//

import SwiftUI

@main
struct MapDestinationApp: App {
    
    @StateObject private var vm = LocationViewModel()
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
