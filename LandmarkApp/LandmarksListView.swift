//
//  LandmarksListView.swift
//  LandmarkApp
//
//  Created by Bryan Nelson on 7/4/22.
//

import SwiftUI

struct LandmarksListView: View {
    var body: some View {
        
        NavigationView {
            List(landmarkArray) { landmark in
                NavigationLink(destination: LandmarkDetailView(selectedLandmark: landmark, region: landmark.region), label: {
                    HStack {
                        LandmarkListImageView(imageName: landmark.image)
                        Text(landmark.name)
                    }
                })
            }
            .navigationTitle("Landmark Book")
        }
    }
}

struct LandmarksListView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksListView()
    }
}
