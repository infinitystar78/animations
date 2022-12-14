//
//  GestureDrag.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct GestureDrag: View {
    
    @GestureState private var menuOffset = CGSize.zero
    @State private var currentMenuY: CGFloat = 0.0
    
    
    
    var body: some View {
        VStack(spacing: 20) {
      
            Spacer()
            
            VStack {
                Circle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                    .overlay(Image(systemName: "line.horizontal.3")
                        .foregroundColor(.white)
                        .offset(x: 0, y: -20))
                    .offset(x: 0, y: -50)
                
                HStack {
                    Spacer()
                }
                Spacer()
            }
            .frame(height: 200)
            .background(RoundedRectangle(cornerRadius: 20).fill(Color.green))
            .offset(x: 0, y: currentMenuY + menuOffset.height)
            .gesture(
                DragGesture()
                    .updating($menuOffset, body: { (value, menuOffset, transaction) in
                        menuOffset = value.translation
                    })
                    .onEnded({ value in
                        // This is what is getting animated
                        if value.translation.height > 100 {
                            currentMenuY = 200 // collapsed
                        } else {
                            currentMenuY = 0 // expanded
                        }
                    })
            )
            .animation(.default, value: currentMenuY) // Animate the menu sliding into final position
        }
        .font(.title)
    }
}

struct GestureDrag_Previews: PreviewProvider {
    static var previews: some View {
        GestureDrag()
    }
}
