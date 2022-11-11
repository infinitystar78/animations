//
//  RepeatNoAutoReverse.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct RepeatNoAutoReverse: View {
    @State private var start = false

    var body: some View {
        VStack(spacing: 20) {
            Spacer()

            Button("Start", action: { start = true })
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.green, lineWidth: 4)
                        .scaleEffect(start ? 2 : 1)
                        .opacity(start ? 0 : 1))
                .animation(Animation.easeOut(duration: 0.6)
                    .repeatForever(autoreverses: false), value: start) // Do not reverse the animation

            Spacer()
        }
        .font(.title)
    }
}

struct RepeatNoAutoReverse_Previews: PreviewProvider {
    static var previews: some View {
        RepeatNoAutoReverse()
    }
}
