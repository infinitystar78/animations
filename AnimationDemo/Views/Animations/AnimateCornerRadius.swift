//
//  AnimateCornerRadius.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct AnimateCornerRadius: View {
    
    @State private var change = false
    var body: some View {
        VStack{
            
            
            RoundedRectangle(cornerRadius: change ? 0 : 70)
                .foregroundColor(  change ? .blue : .gray)
                .frame(width: change ? 100 : 50, height: change ? 50 : 100)
                .padding()
                .animation(.easeInOut, value: change)
            
            
            
            Spacer()
            Button("Change") {
                change.toggle()
            }
            
        }
    }
}

struct AnimateCornerRadius_Previews: PreviewProvider {
    static var previews: some View {
        AnimateCornerRadius()
    }
}
