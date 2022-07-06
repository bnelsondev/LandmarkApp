//
//  LandmarkDetailView.swift
//  LandmarkApp
//
//  Created by Bryan Nelson on 7/4/22.
//

import SwiftUI
import MapKit

struct LandmarkDetailView: View {
    
    @State var selectedLandmark : LandmarksModel
    @State var region : MKCoordinateRegion
    
    var body: some View {
                
        ZStack {
            VStack {
                ZStack {
                    Text(selectedLandmark.name)
                    Map(coordinateRegion: $region)
                        
                }
                .frame(height: UIScreen.main.bounds.height * 0.5)
                HStack {
                    VStack(alignment: .leading) {
                        Text(selectedLandmark.name)
                            .font(.largeTitle)
                            .foregroundColor(Color.green)
                            .padding(.bottom, 1)
                        Text(selectedLandmark.city)
                    }
                    .padding()
                    Spacer()
                    Text(selectedLandmark.type)
                        .padding()
                }
                .frame(height: UIScreen.main.bounds.height * 0.5)
            }
            LandmarkDetailImageView(imageName: selectedLandmark.image)
        }
    }
}

struct LandmarkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailView(selectedLandmark: landmark1, region: landmark1.region)
    }
}
