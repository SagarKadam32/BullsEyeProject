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
                    Slider(value: $sliderValue, in: 1.0...100.0)
                    Text("100")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                .padding()
                
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .large)
        ContentView().previewLayout(.fixed(width: 568, height: 320))
        
        ContentView().preferredColorScheme(.dark)
        ContentView().previewLayout(.fixed(width: 568, height: 320)).preferredColorScheme(.dark)
    }
}
