//
//  SteppersAnimation.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct SteppersAnimation: View {
    @State private var stepperValue: CGFloat = 1.0
    
    var body: some View {
        VStack{
            ZStack {
                ForEach(0...40, id: \.self) { _ in
                    Circle()
                        .foregroundColor(.green).opacity(0.2)
                        .frame(width: .random(in: 10...100),
                               height: .random(in: 10...100))
                        .position(x: .random(in: stepperValue...400),
                                  y: .random(in: stepperValue...400))
                        .animation(.default, value: stepperValue) // Animate the change in position
                }
            }
      
            Stepper("Adjust", value: $stepperValue, in: 1.0...5.0)
                .padding()
            
        }
    }
}

struct SteppersAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SteppersAnimation()
    }
}
