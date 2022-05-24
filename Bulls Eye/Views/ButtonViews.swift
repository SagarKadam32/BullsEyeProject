//
//  ButtonViews.swift
//  Bulls Eye
//
//  Created by Sagar Kadam on 24/05/22.
//

import SwiftUI

struct HitMeButton: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        Button("Hit Me") {
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
