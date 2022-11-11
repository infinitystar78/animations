//
//  GestureOnTap.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct GestureOnTap: View {
    
    @State private var isOn = false
    
    var body: some View {
        VStack(spacing: 20) {
       
            Spacer()
            
            Circle()
                .fill(isOn ? Color.green : Color.red)
                .frame(width: 200, height: 200)
                .overlay(Text("ON").opacity(isOn ? 1 : 0))
                .overlay(Text("OFF").foregroundColor(.white).opacity(isOn ? 0 : 1))
                .onTapGesture(count: 2, perform: {
                    isOn.toggle()
                })
                .shadow(color: isOn ? .green : .red, radius: 50)
                .animation(.easeOut(duration: 1), value: isOn) // Animate changes on double-tap
            
            Spacer()
            
        }.font(.title)
    }
}

struct GestureOnTap_Previews: PreviewProvider {
    static var previews: some View {
        GestureOnTap()
    }
}
