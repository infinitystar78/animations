//
//  AnimateOpacity.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct AnimateOpacity: View {
    @State private var show = false
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.yellow)
                .padding()
                .opacity(show ? 0 : 1)
                .animation(.easeOut(duration: 2), value: show)

            Button("Show/Hide") {
                show.toggle()
            }
        }
    }
}

struct AnimateOpacity_Previews: PreviewProvider {
    static var previews: some View {
        AnimateOpacity()
    }
}
