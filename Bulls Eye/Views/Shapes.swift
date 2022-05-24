//
//  Shapes.swift
//  Bulls Eye
//
//  Created by Sagar Kadam on 24/05/22.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                .inset(by: 10)
                .stroke(.blue, lineWidth: 20)
                .frame(width: 200, height: 100)
            
            Circle()
                .strokeBorder(.red, lineWidth: 20)
                .frame(width: 200, height: 100)
            
            RoundedRectangle(cornerRadius: 20.0)
                .fill(Color.orange)
                .frame(width: 200, height: 100)

            Capsule()
                .fill(Color.red)
                .frame(width: 200, height: 100)
            
            Ellipse()
                .fill(Color.yellow)
                .frame(width: 200, height: 100)
            
        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
