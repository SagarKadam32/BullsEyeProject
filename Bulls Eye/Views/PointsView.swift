//
//  PointsView.swift
//  Bulls Eye
//
//  Created by Sagar Kadam on 26/05/22.
//

import SwiftUI

struct PointsView: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        let roundedSliderValue = Int(sliderValue.rounded())
        let points = game.point(sliderValue: roundedSliderValue)
        VStack(spacing:10) {
            InstructionText(textInstruction: "\nOriginal Target Value = \(game.target)")
            InstructionText(textInstruction: "You selected = \(roundedSliderValue)")
            InstructionText(textInstruction: "Congratulations !!! \n Your Score is ")
            BigNumberText(textInput: "\(points)")
            Button(action: {
                withAnimation {
                    alertIsVisible = false
                }
                game.startNewRound(points: points)
            }){
                ButtonText(textInput: "Start New Round".uppercased())
            }
        }
                .padding()
                .frame(maxWidth: 300)
                .background(Color("BackgroundColor"))
                .cornerRadius(21.0)
                .shadow(radius: 10, x: 5, y: 5)
                .transition(.scale)
    }
}

struct PointsView_Previews: PreviewProvider {
    static private var alertIsVisible = Binding.constant(false)
    static private var sliderValue = Binding.constant(50.0)
    static private var game = Binding.constant(Game())
    
    static var previews: some View {
        PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game)
            .environment(\.sizeCategory, .large)
        PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game).previewLayout(.fixed(width: 568, height: 320))
        PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game).preferredColorScheme(.dark)
        PointsView(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game).previewLayout(.fixed(width: 568, height: 320)).preferredColorScheme(.dark)    }
}
