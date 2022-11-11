//
//  RepeatingExample.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct RepeatingExample: View {
    @State private var start = false

    var body: some View {
        VStack(spacing: 20) {
            Spacer()

            Button("Start", action: { start.toggle() })
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.green))
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.green, lineWidth: 4)
                        .scaleEffect(start ? 2 : 1)
                        .opacity(start ? 0 : 1))
                .animation(.easeOut(duration: 1).repeatCount(2), value: start) // Repeat 3 times

            Spacer()
        }
        .font(.title)
    }
}

struct RepeatingExample_Previews: PreviewProvider {
    static var previews: some View {
        RepeatingExample()
    }
}
