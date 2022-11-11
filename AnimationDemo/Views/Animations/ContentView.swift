//
//  ContentView.swift
//  AnimationDemo
//
//  Created by M W on 11/11/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var change = false

    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.green)
                .frame(width: change ? 260: 130 , height: change ? 260: 130)
               // .offset(x:0, y:change ? 300: 0)
                .animation(Animation.easeIn(duration: 2))
            Spacer()
            
            Button {
                self.change.toggle()
            } label: {
                VStack{
                    Text("Change")
                        .font(.headline)
                }
            }.padding(.bottom)
  
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
