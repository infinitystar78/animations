//
//  RotationAnchor.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct RotationAnchor: View {
    
    @State private var change = false
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .shadow(radius: 8)
                .frame(width: 320, height: 200)
                .overlay(Text("Rotation").foregroundColor(.white))
                .rotationEffect(Angle.degrees(change ? 220 : 0), anchor: .bottomTrailing)
                .animation(.linear(duration: 1), value: change)
            
            Button("Change") {
                change.toggle()
            }
    
        }
    }
}

struct RotationAnchor_Previews: PreviewProvider {
    static var previews: some View {
        RotationAnchor()
    }
}
