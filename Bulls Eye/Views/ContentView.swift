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
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                InstructionsView(game: $game)
                SliderView(sliderValue: $sliderValue)
                
                Button("Hit Me") {
                    // TO-DO Action
                    alertIsVisible = true
                }
                .textCase(.uppercase)
                .font(.title3)
                .padding(20.0)
                .background(
                    ZStack {
                        Color("ButtonColor")
                        LinearGradient(gradient: Gradient(colors: [Color.white, Color.clear]), startPoint: .top, endPoint: .bottom)
                    }
                )
                .foregroundColor(Color.white)
                .cornerRadius(21.0)
                .alert("BULL's EYE !!!", isPresented: $alertIsVisible) {
                    Button("Awesome!"){}
                } message: {
                    let roundedVar = Int(sliderValue.rounded())
                    Text("The slider value is \(roundedVar).\n" +
                         "Your score is \(game.point(sliderValue: roundedVar)) this round.")
                }
            }
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
