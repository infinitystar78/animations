//
//  RotationAnimation.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct RotationAnimation: View {
    @State private var change = false
    
    
    
    var body: some View {
        VStack {
            Button("Change") {
                change.toggle()
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.pink)
                .frame(width: 300, height: 200)
                .overlay(Image(systemName: "arrow.right").foregroundColor(.black))
                .rotationEffect(Angle.degrees(change ? 180 : 0))
                .animation(.easeInOut, value: change)
            
            Spacer()
            
            
            
        }
        
        
        
    }
}

struct RotationAnimation_Previews: PreviewProvider {
    static var previews: some View {
        RotationAnimation()
    }
}
