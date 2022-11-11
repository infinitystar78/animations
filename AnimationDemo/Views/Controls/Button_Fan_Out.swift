//
//  Button_Fan_Out.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct Button_Fan_Out: View {
    @State private var showButtons = false
    
    
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            Group {
                Button(action: { showButtons.toggle() }) {
                    Image(systemName: "bag.badge.plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 0 : -90))
                        .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                        .opacity(showButtons ? 1 : 0)
                        .offset(x: 0, y: showButtons ? -150 : 0) // No
                }
                //Trigger button
                Button(action: { showButtons.toggle() }) {
                    Image(systemName: "gauge.badge.plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 0 : 90))
                }
                .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                .offset(x: showButtons ? -110 : 0, y: showButtons ? -110 : 0)
                .opacity(showButtons ? 1 : 0)
                
                Button(action: { showButtons.toggle() }) {
                    Image(systemName: "calendar.badge.plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 0 : 90))
                }
                .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
                .offset(x: showButtons ? -150 : 0, y: 0)
                .opacity(showButtons ? 1 : 0)
                
                Button(action: { showButtons.toggle() }) {
                    Image(systemName: "plus")
                        .padding(24)
                        .rotationEffect(Angle.degrees(showButtons ? 45 : 0))
                }
                .background(Circle().fill(Color.green).shadow(radius: 8, x: 4, y: 4))
            } // Apply these modifiers to every view inside the Group
            .padding(.trailing, 20)
            .tint(.white)
            .animation(.default, value: showButtons)
        }
        
    }
}

struct Button_Fan_Out_Previews: PreviewProvider {
    static var previews: some View {
        Button_Fan_Out()
    }
}
