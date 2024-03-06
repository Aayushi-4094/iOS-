//
//  MapView.swift
//  Landmark
//
//  Created by user2 on 26/10/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
}
private var region:MKCoordinateRegion{
    MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 13.072090, longitude: 80.201860), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
}

#Preview {
    MapView()
}
