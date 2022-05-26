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
            withAnimation {
                alertIsVisible = true
            }
        }.textCase(.uppercase)
        .font(.title3)
        .padding(20.0)
        .background(
            ZStack {
                Color("ButtonColor")
                LinearGradient(gradient: Gradient(colors: [Color.white, Color.clear]), startPoint: .top, endPoint: .bottom)
            }
        )
        .foregroundColor(Color.white)
        .cornerRadius(Constants.General.roundRectCornerRadius)
        .overlay(
            RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)
                .strokeBorder(.white, lineWidth: Constants.General.strokeWidth)
        )
   }
}

struct HitMeButton_Previews: PreviewProvider {
    static private var alertIsVisible = Binding.constant(false)
    static private var sliderValue = Binding.constant(50.0)
    static private var game = Binding.constant(Game())
    
    static var previews: some View {
        HitMeButton(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game)
            .environment(\.sizeCategory, .large)
        HitMeButton(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game).previewLayout(.fixed(width: 568, height: 320))
        HitMeButton(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game).preferredColorScheme(.dark)
        HitMeButton(alertIsVisible: alertIsVisible, sliderValue: sliderValue, game: game).previewLayout(.fixed(width: 568, height: 320)).preferredColorScheme(.dark)    }
}
