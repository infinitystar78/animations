//
//  CombinedMoveAndScale.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct CombinedMoveAndScale: View {
    ///Combining_MoveAndScale
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
               
                Spacer()
                
                HStack(alignment: .bottom) {
                    Button(action: {
                            change.toggle()
                    }, label: {
                        Image(systemName: "macwindow")
                    })
                    if change {
                        Image(systemName: "car")
                            .transition(.move(edge: .leading)
                                .combined(with: .scale(scale:2, anchor: .topTrailing)))
                    }
                    
                    Spacer()
                }
                .animation(.default, value: change)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
            }
            .font(.title)
            .tint(Color.green)
        }
    }
}

struct CombinedMoveAndScale_Previews: PreviewProvider {
    static var previews: some View {
        CombinedMoveAndScale()
    }
}
