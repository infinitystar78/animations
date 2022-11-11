//
//  ToggleAnimation.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct ToggleAnimation: View {
    @State private var isOn = false
    @State private var extraInfo = ""
    @State private var extraAmount = 0.65
    
    
    var body: some View {
        VStack(spacing: 20) {
   
            
            Toggle("Extra Options", isOn: $isOn)
                .padding(.horizontal)
            Group {
                VStack(spacing: 20) {
                    Image(systemName: "hammer.fill")
                    Text("Your extra options!")
                    TextField("Extra Info", text: $extraInfo)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Slider(value: $extraAmount)
                }
                .padding(28)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.blue))
            }
            .padding(.horizontal)
            .saturation(isOn ? 1 : 0)
            .opacity(isOn ? 1 : 0.25)
            .animation(.easeIn(duration: 0.3), value: isOn)
        }
        .font(.title)
    }
}

struct ToggleAnimation_Previews: PreviewProvider {
    static var previews: some View {
        ToggleAnimation()
    }
}
