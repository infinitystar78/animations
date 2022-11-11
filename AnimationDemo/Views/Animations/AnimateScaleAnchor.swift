//
//  AnimateScaleAnchor.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct AnimateScaleAnchor: View {
    @State private var change = false

    var body: some View {
        VStack {
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.yellow)
                .overlay(Text("Scale from top").foregroundColor(.white))
                .scaleEffect(change ? 1 : 0.25, anchor: .top) // Add anchor location
                .animation(.default, value: change)

            
            
    
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.blue)
                .overlay(Text("Scale from right").foregroundColor(.white))
                .scaleEffect(change ? 0.25 : 1, anchor: .trailing)
                .animation(.default, value: change)
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.red)
                .overlay(Text("Scale from bottom left").foregroundColor(.white))
                .scaleEffect(change ? 1 : 0.5, anchor: .bottomLeading)
                .animation(.default, value: change)
            
            
            
            
            
            Button {
                change.toggle()
            } label: {
          
                  Text("Animate")
                
            }

            
            Spacer()
          
        }
    }
}

struct AnimateScaleAnchor_Previews: PreviewProvider {
    static var previews: some View {
        AnimateScaleAnchor()
    }
}
