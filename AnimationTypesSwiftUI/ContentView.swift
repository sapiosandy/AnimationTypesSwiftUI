//
//  ContentView.swift
//  AnimationTypesSwiftUI
//
//  Created by Sandra Gomez on 5/27/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var start = false
    var body: some View {
        VStack {
            Button("Start Animation") {
                start.toggle()
            }
            HStack {

// .default (equivalent to .easeInOut with no time duration), .easeIn, .easeOut, .easeInOut, .linear
                
//                Text("easeIn")
//                    .offset(x: 0, y: start ? 450 : 0)
//                    .animation(.easeIn(duration: 2), value: start)
//                Text("easeOut")
//                    .offset(x: 0, y: start ? 450 : 0)
//                    .animation(.easeOut(duration: 2), value: start)
//                Text("easeInOut")
//                    .offset(x: 0, y: start ? 450 : 0)
//                    .animation(.easeInOut(duration: 2), value: start)
//                Text("linear")
//                    .offset(x: 0, y: start ? 450 : 0)
//                    .animation(.linear(duration: 2), value: start)
                
               // mass, stiffness, damping, initial velocity
                
                Text("spring")
                    .offset(x: 0, y: start ? 450 : 0)
                    .animation(.interpolatingSpring(mass: 1, stiffness: 1, damping: 1, initialVelocity: 1), value: start)
                Text("spring")
                    .offset(x: 0, y: start ? 450 : 0)
                    .animation(.interpolatingSpring(mass: 1.9, stiffness: 1, damping: 1, initialVelocity: 1), value: start)
                Text("spring")
                    .offset(x: 0, y: start ? 450 : 0)
                    .animation(.interpolatingSpring(mass: 2.5, stiffness: 1, damping: 1, initialVelocity: 1), value: start)
                Text("spring")
                    .offset(x: 0, y: start ? 450 : 0)
                    .animation(.interpolatingSpring(mass: 3.5, stiffness: 1, damping: 1, initialVelocity: 1), value: start)

            }.position(x: 150, y: 10)
        }
    }
}

#Preview {
    ContentView()
}
