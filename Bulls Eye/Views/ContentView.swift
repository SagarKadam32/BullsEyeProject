//
//  ContentView.swift
//  Bulls Eye
//
//  Created by Sagar Kadam on 22/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 10.0
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack() {
                InstructionsView(game: $game)
                    .padding(.bottom, 100.0)
                HitMeButton(alertIsVisible: $alertIsVisible,
                            sliderValue: $sliderValue,
                            game: $game)
            }
            SliderView(sliderValue: $sliderValue)
        }
    }
}

struct InstructionsView : View {
    @Binding var game: Game
    var body: some View {
        VStack {
            InstructionText(textInstruction: "🎯🎯🎯\n PUT THE BULLSEYE \n AS CLOSE AS YOU CAN TO\n 👇🏼👇🏼👇🏼")
                .padding(.leading, 30.0)
            .padding(.trailing, 30.0)
            
            BigNumberText(textInput: "\(game.target)")
        }
    }
}

struct SliderView: View {
    @Binding var sliderValue: Double
    var body: some View {
        HStack {
            SliderLabelText(textInput: "1")
            Slider(value: $sliderValue, in: 1.0...100.0)
            SliderLabelText(textInput: "100")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .large)
        ContentView().previewLayout(.fixed(width: 568, height: 320))
        
        ContentView().preferredColorScheme(.dark)
        ContentView().previewLayout(.fixed(width: 568, height: 320)).preferredColorScheme(.dark)
    }
}
