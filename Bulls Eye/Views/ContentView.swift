//
//  ContentView.swift
//  Bulls Eye
//
//  Created by Sagar Kadam on 22/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue:Double = 10.0
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\n PUT THE BULLSEYE \n AS CLOSE AS YOU CAN TO\n 👇🏼👇🏼👇🏼")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(6.0)
                .font(.footnote)
            
            Text("\(game.target)")
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
                self.alertIsVisible = true
            }.alert("BULL's EYE !!!", isPresented: $alertIsVisible) {
                Button("Awesome!"){}
            } message: {
                let roundedVar : Int = Int(self.sliderValue.rounded())
                Text("The slider value is \(roundedVar).\n" +
                     "Your score is \(self.game.point(sliderValue: roundedVar)) this round.")
            }
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
