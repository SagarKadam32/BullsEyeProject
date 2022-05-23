//
//  ContentView.swift
//  Bulls Eye
//
//  Created by Sagar Kadam on 22/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
//    @State private var whosThereVisible: Bool = false
    @State private var sliderValue:Double = 10.0
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\n PUT THE BULLSEYE \n AS CLOSE AS YOU CAN TO\n 👇🏼👇🏼👇🏼")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(6.0)
                .font(.footnote)
            
            Text("89")
                .kerning(-1.0)
                .bold()
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .font(.title3)
                    .fontWeight(.bold)
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .font(.title3)
                    .fontWeight(.bold)
            }
            Button("Hit Me") {
                // TO-DO Action
//                print("Hit Me Clicked..")
                self.alertIsVisible = true
            }.alert("BULL's EYE !!!", isPresented: $alertIsVisible) {
                Button("Awesome!"){}
            } message: {
                let roundedVar : Int = Int(self.sliderValue.rounded())
                Text("The slider value is \(roundedVar).")
            }
            
//            Button("Knock Knock!") {
//                self.whosThereVisible = true
//            }.alert("Who's There?", isPresented: $whosThereVisible) {
//                Button("Little Old Lady who?"){}
//            } message: {
//                Text("Little Old Lady")
//            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .large)
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
