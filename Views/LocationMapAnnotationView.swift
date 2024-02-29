//
//  LocationMapAnnotationView.swift
//  MapDestination
//
//  Created by Nicola Kaleta on 29/02/2024.
//

import SwiftUI

struct LocationMapAnnotationView: View {
    // MARK: - Properties
    
    let accentColor = Color("AccentColor")
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            // map icon with circle background
            Image(systemName: "map.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .font(.headline)
                .foregroundStyle(.white)
                .padding(6)
                .background(accentColor)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
        }
    }
}

#Preview {
    LocationMapAnnotationView()
}
