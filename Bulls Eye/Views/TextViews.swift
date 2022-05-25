//
//  TextViews.swift
//  Bulls Eye
//
//  Created by Sagar Kadam on 24/05/22.
//

import SwiftUI

struct InstructionText: View {
    var textInstruction: String
    var body: some View {
        Text(textInstruction)
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(6.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var textInput: String
    var body: some View {
        Text(textInput)
            .kerning(-1.0)
            .bold()
            .font(.largeTitle)
            .fontWeight(.black)
    }
}

struct SliderLabelText : View {
    var textInput: String
    var body: some View {
        Text(textInput)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(Color("TextColor"))
            .frame(width: 40.0)
    }
}

struct LabelTextView : View {
    var textInput: String
    var body: some View {
        Text(textInput)
            .font(.caption)
            .bold()
            .foregroundColor(Color("TextColor"))
            .kerning(1.5)

        
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(textInstruction: "Instructions..")
            BigNumberText(textInput: "999")
            SliderLabelText(textInput: "1")
            LabelTextView(textInput: "Score")
            LabelTextView(textInput: "Round")

        }
    }
}
