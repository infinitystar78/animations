//
//  GestureZoom.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct GestureZoom: View {
    @GestureState private var scale: CGFloat = 0.0
    @State private var endScale: CGFloat = 1.0
    
    
    var body: some View {
        VStack(spacing: 20) {
      
            
            Text("Zoom In")
            
            Spacer()
            
            Image(systemName: "figure.wave")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
                .scaleEffect(scale + endScale)
                .gesture(MagnificationGesture()
                    .updating($scale, body: { (value, scale, transaction) in
                        scale = value.magnitude
                    })
                    .onEnded({ (value) in
                        endScale = value.magnitude + endScale
                    })
                )
                .animation(.default, value: endScale) // Smooth the zooming in and out
            
            Spacer()
        }
        .font(.title)
    }
}

struct GestureZoom_Previews: PreviewProvider {
    static var previews: some View {
        GestureZoom()
    }
}
