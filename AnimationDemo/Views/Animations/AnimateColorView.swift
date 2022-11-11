//
//  AnimateColorView.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct AnimateColorView: View {
    
    @State private var change = false
    
    
    var body: some View {
        VStack{
            
            
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(change ? .red : .blue)
                .padding()
                //.animation(.easeInOut, value: change)
                .animation(.easeInOut(duration: 0.5), value: change)
            
            
            
            
            
            Spacer()
            Button {
                change.toggle()
            } label: {
               Text("Animate")
                    .font(.headline)
            }
        
        }
        
        
        
        
        
    }
}

struct AnimateColorView_Previews: PreviewProvider {
    static var previews: some View {
        AnimateColorView()
    }
}
