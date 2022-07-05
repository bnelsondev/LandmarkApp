//
//  LandmarkListImageView.swift
//  LandmarkApp
//
//  Created by Bryan Nelson on 7/4/22.
//

import SwiftUI

struct LandmarkListImageView: View {
    
    var imageName : String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width * 0.17, height: UIScreen.main.bounds.height * 0.07)
    }
}

struct LandmarkImageView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListImageView(imageName: "eiffel")
    }
}
