//
//  DelayAnimation.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct DelayAnimation: View {
    @State private var change = false
    
    
    var body: some View {
        VStack(spacing: 20) {
      
            Text("Wait 1.5 second after this view loads before animating.").padding(.horizontal)
            GeometryReader { geometry in
                ZStack {
                    VStack {
                        Text("Hello!")
                        Image(systemName: "heart.fill")
                            .foregroundColor(.pink)
                    }.font(.system(size: 50))
                    
                    HStack(spacing: 0) {
                        Rectangle()
                            .offset(x: change ? -geometry.size.width / 2 : 0)
                        Rectangle()
                            .offset(x: change ? geometry.size.width / 2 : 0)
                    }
                    .foregroundColor(.red)
                    .animation(.default.delay(1.5), value: change) // Delay the animation
                }
            }
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom)
        .onAppear {
            // Trigger the animation
            change = true
        }
    }
}

struct DelayAnimation_Previews: PreviewProvider {
    static var previews: some View {
        DelayAnimation()
    }
}