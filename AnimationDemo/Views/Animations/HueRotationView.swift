//
//  HueRotationView.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct HueRotationView: View {
    
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20) {

            Image("ColorWheel")
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .padding()
                    .hueRotation(Angle.degrees(change ? 170 : 0)) // Rotate around color wheel
                    .animation(.easeInOut, value: change)
                
                Image("umbrella")
                    .resizable()
                    .scaledToFit()
                    .hueRotation(Angle.degrees(change ? 170 : 0)) // Rotate around color wheel
                    .animation(.easeInOut, value: change)
            }
            Button("Change") {
                change.toggle()
            }
        }.font(.title)
    }
}

struct HueRotationView_Previews: PreviewProvider {
    static var previews: some View {
        HueRotationView()
    }
}
