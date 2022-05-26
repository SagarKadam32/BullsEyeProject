//
//  PointsView.swift
//  Bulls Eye
//
//  Created by Sagar Kadam on 26/05/22.
//

import SwiftUI

struct PointsView: View {
//    @Binding var alertIsVisible: Bool
//    @Binding var sliderValue: Double
//    @Binding var game: Game
    
    var body: some View {
        VStack(spacing:10) {
//            let roundedVar = Int(sliderValue.rounded())
            InstructionText(textInstruction: "Your selected slider value is")
            BigNumberText(textInput: "99")
            ButtonText(textInput: "Start New Round".uppercased())

//            Button(action: {
//                game.startNewRound(points: game.point(sliderValue: Int(sliderValue)))
//            }){
//                ButtonText(textInput: "Start New Round".uppercased())
//            }
        }
                .padding()
                .frame(maxWidth: 300)
                .background(Color("BackgroundColor"))
                .cornerRadius(21.0)
            .shadow(radius: 10, x: 5, y: 5)
            
          
        
        
            
        
    }
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView()
            .environment(\.sizeCategory, .large)
        PointsView().previewLayout(.fixed(width: 568, height: 320))

        PointsView().preferredColorScheme(.dark)
        PointsView().previewLayout(.fixed(width: 568, height: 320)).preferredColorScheme(.dark)    }
}
