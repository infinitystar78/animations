//
//  AnimateText.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct AnimateText: View {
    @State private var change = false

    var body: some View {
        VStack {
      
            
            Spacer()
            
            Button {
                change.toggle()
            } label: {
                Text("Hello!")
                    .font(.system(size: change  ? 100 : 30))
                    .animation(.easeInOut, value: change)

            }

            
         
            
        }
    }
}

struct AnimateText_Previews: PreviewProvider {
    static var previews: some View {
        AnimateText()
    }
}
