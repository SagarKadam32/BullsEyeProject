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

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        InstructionText(textInstruction: "Instructions..")
        BigNumberText(textInput: "999")
    }
}
