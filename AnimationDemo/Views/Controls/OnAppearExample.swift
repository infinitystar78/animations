//
//  OnAppearExample.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct OnAppearExample: View {
    
    @State private var expand = false
    var body: some View {
        ZStack {
            Image(systemName: "sun.max.fill")
                .padding()
                .foregroundColor(.white)
                .background(Circle()
                    .fill(Color.green)
                    .scaleEffect(expand ? 20 : 1)
                    .ignoresSafeArea())
                // Change a value that will trigger the animation
                .onAppear {
                    
                    expand.toggle()
                    
                    
                }
                .animation(.easeIn(duration: 2), value: expand)
            
    
        }
        .font(.title)
    }
}

struct OnAppearExample_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearExample()
    }
}
