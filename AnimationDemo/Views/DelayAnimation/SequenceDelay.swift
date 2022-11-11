//
//  SequenceDelay.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct SequenceDelay: View {
    
    @State private var show = false
    
    var body: some View {
        VStack(spacing: 20) {
       
            Spacer()
            VStack {
                Group {
                    Image(systemName: "1.circle")
                        .opacity(show ? 1 : 0)
                        .animation(.easeIn.delay(0.5), value: show)  // setting sequence start
                    Image(systemName: "2.circle")
                        .opacity(show ? 1 : 0)
                        .animation(.easeIn.delay(0.9), value: show)
                    Image(systemName: "3.circle")
                        .opacity(show ? 1 : 0)
                        .animation(.easeIn.delay(1.3), value: show)  // sequence end
                }.font(.system(size: 100))
                
                Button("Go!", action: {})
                    .font(.system(size: 70))
                    .foregroundColor(.white)
                    .padding(25)
                    .background(Circle().fill(Color.green))
                    .opacity(show ? 1 : 0)
                    .animation(.easeIn.delay(1.7), value: show)
            }.onAppear { show = true }
            Spacer()
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom)
    }
}

struct SequenceDelay_Previews: PreviewProvider {
    static var previews: some View {
        SequenceDelay()
    }
}
