//
//  AnimateGeometryReader.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct AnimateGeometryReader: View {
    @State private var change = false
    
    
    var body: some View {
        VStack(spacing:20){
            
            GeometryReader { gp in
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .position(change
                              ? CGPoint(x: 50, y: 50)
                              : CGPoint(x: gp.size.width - 50, y: gp.size.height - 50))
                    .animation(.easeOut(duration: 2), value: change)
            }
            
            Button("Change") {
                change.toggle()
            }
            
            
        }
        
        
        
    }
}

struct AnimateGeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        AnimateGeometryReader()
    }
}
