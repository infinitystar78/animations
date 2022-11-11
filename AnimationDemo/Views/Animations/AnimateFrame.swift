//
//  AnimateFrame.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct AnimateFrame: View {
    @State private var change = false

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.green)
                .frame(width: change ? 100 : 350, height: change ? 100 : 200)
                .scaleEffect(change ? 0.5 : 1)

                .animation(.easeInOut, value: change)

            Spacer()

            Button("Change") {
                change.toggle()
            }
        }
    }
}

struct AnimateFrame_Previews: PreviewProvider {
    static var previews: some View {
        AnimateFrame()
    }
}
