//
//  SliderAnimation.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct SliderAnimation: View {
    
    @State private var primaryWidth: CGFloat = 50.0

    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Color.red
                    .frame(width: primaryWidth)
                Color.orange
            }
            .animation(.default, value: primaryWidth)
            //Slider Control
            Slider(value: $primaryWidth, in: 0...410, step: 1)
                .padding()
       
        }
    }
}

struct SliderAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SliderAnimation()
    }
}
