//
//  LandmarkDetailImageView.swift
//  LandmarkApp
//
//  Created by Bryan Nelson on 7/4/22.
//

import SwiftUI

struct LandmarkDetailImageView: View {
    
    var imageName : String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.2)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 3))
            .shadow(radius: 10)
    }
}

struct LandmarkDetailImageView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetailImageView(imageName: "eiffel")
    }
}
