//
//  Shapes.swift
//  Bulls Eye
//
//  Created by Sagar Kadam on 24/05/22.
//

import SwiftUI

struct Shapes: View {
    @State private var IsWideShapes = true
    var body: some View {
        VStack {
            if !IsWideShapes {
                Circle()
                    .inset(by: 10)
                    .stroke(.blue, lineWidth: 20)
                    .frame(width: 200, height: 100)
                    .transition(.scale)
                
                Circle()
                    .strokeBorder(.red, lineWidth: 20)
                    .frame(width: 200, height: 100)
                    .transition(.slide)
            }
            
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.orange)
                .frame(width: IsWideShapes ? 200 : 100, height: 100)

            Capsule()
                .fill(Color.red)
                .frame(width: IsWideShapes ? 200 : 100, height: 100)
            
            Ellipse()
                .fill(Color.yellow)
                .frame(width: IsWideShapes ? 200 : 100, height: 100)
            
            
            Button(action: {
                withAnimation {
                    IsWideShapes.toggle()
                }
            }){
                ButtonText(textInput: "Animate".uppercased())
            }
            .padding()
        }
        .background(Color.green)
       
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
