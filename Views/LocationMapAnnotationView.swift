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
            // Map icon with circle background
            Image(systemName: "map.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .font(.headline)
                .foregroundStyle(.white)
                .padding(6)
                .background(accentColor)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            // Triangle shape below the map
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFit()
                .foregroundStyle(accentColor)
                .frame(width: 10, height: 10)
                .rotationEffect(.degrees(180))
                .offset(y: -3)
                .padding(.bottom, 40)
        }
    }
}

#Preview {
    LocationMapAnnotationView()
}
