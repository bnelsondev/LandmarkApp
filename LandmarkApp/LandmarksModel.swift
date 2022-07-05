//
//  LandmarksModel.swift
//  LandmarkApp
//
//  Created by Bryan Nelson on 7/3/22.
//

import Foundation
import SwiftUI
import MapKit

struct LandmarksModel : Identifiable {
    var id = UUID()
    var name : String
    var city : String
    var type : String
    var image : String
    var landmarkLongitude : Double
    var landmarkLatitude : Double
    var region : MKCoordinateRegion {
        MKCoordinateRegion(
                center: CLLocationCoordinate2D(latitude: landmarkLatitude,
                                               longitude: landmarkLongitude),
                latitudinalMeters: 750,
                longitudinalMeters: 750)
    }
}

var landmark1 = LandmarksModel(name: "Eiffel", city: "France", type: "Tower", image: "eiffel", landmarkLongitude: 2.294694, landmarkLatitude: 48.858093)
var landmark2 = LandmarksModel(name: "Colosseo", city: "Rome", type: "Amphitheatre", image: "colosseo", landmarkLongitude: 12.492231, landmarkLatitude: 41.890251)
var landmark3 = LandmarksModel(name: "Tower Bridge", city: "London", type: "Bridge", image: "towerBridge", landmarkLongitude: -0.075278, landmarkLatitude: 51.505554)
var landmark4 = LandmarksModel(name: "Leaning Tower of Pisa", city: "Pisa", type: "Tower", image: "pisa", landmarkLongitude: 10.400000, landmarkLatitude: 43.716667)

var landmarkArray = [landmark1, landmark2, landmark3, landmark4]
