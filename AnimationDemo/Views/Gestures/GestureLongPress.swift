//
//  GestureLongPress.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct GestureLongPress: View {
    
    @State private var isLongPressed = false
    
    var body: some View {
        VStack(spacing: 20) {
    
            Spacer()
            
            Circle()
                .fill(isLongPressed ? Color.blue : Color.green)
                .frame(width: 200, height: 200)
                .overlay(Text("Long Press"))
                .overlay(
                    Circle()
                        .stroke(Color.black, lineWidth: 5)
                        .scaleEffect(isLongPressed ? 2 : 1)
                        .opacity(isLongPressed ? 0 : 1))
            
                .onLongPressGesture {
                    isLongPressed.toggle()
                }
                .animation(.easeIn(duration: 3), value: isLongPressed) // Animate changes when long press completes
            
            Spacer()
            
        }
        .font(.title)
    }
}

struct GestureLongPress_Previews: PreviewProvider {
    static var previews: some View {
        GestureLongPress()
    }
}
