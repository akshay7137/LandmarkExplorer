//
//  MapView.swift
//  PracticeAssignment4
//
//  Created by Akshay Singh on 29/05/25.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinate : CLLocationCoordinate2D

    func makeUIView(context: Context) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MapView.UIViewType, context: Context) {
        //Put the code
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

#Preview {
    MapView(coordinate: ModelData().landmarks[0].locationCoordinate)
}
