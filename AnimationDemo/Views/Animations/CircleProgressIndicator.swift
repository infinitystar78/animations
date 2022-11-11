//
//  CircleProgressIndicator.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct CircleProgressIndicator: View {
    @State private var change = false
    @State private var circleProgress: CGFloat = 1.0
    
    
    var body: some View {
        VStack {
            Button("Change") {
                change.toggle()
                circleProgress = change ? 0.5 : 1
            }
            
            
            Circle()
                .trim(from: 0, to: circleProgress) // Animate trim
                .stroke( change ? Color.red : Color.green,
                        style: StrokeStyle(lineWidth: 40,
                                           lineCap: CGLineCap.round))
                .frame(height: 300)
                .rotationEffect(.degrees(-90)) // Start from top
                .padding(40)
                .animation(.easeIn(duration: 2.5), value: change)
            
            
            Spacer()
        }
    }
}

struct CircleProgressIndicator_Previews: PreviewProvider {
    static var previews: some View {
        CircleProgressIndicator()
    }
}
