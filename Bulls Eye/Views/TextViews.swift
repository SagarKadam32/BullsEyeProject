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

struct BodyText : View {
    var textInput: String
    var body: some View {
        Text(textInput)
            .font(.subheadline)
            .fontWeight(.regular)
            .multilineTextAlignment(.center)
            .lineSpacing(12.0)

    }
}

struct ButtonText : View {
    var textInput: String
    var body: some View {
        Text(textInput)
            .bold()
            .font(.body)
            .fontWeight(.regular)
            .padding()
            .frame( maxWidth: .infinity )
            .background(Color.accentColor)
            .foregroundColor(.white)
            .cornerRadius(12.0)
    }
}

struct ScoreText : View {
    var score: Int
    var body: some View {
        Text(String(score))
            .font(.title2)
            .kerning(-0.2)
            .fontWeight(.regular)
            .foregroundColor(Color("TextColor"))
    }
}

struct DateText : View {
    var date: Date
    var body: some View {
        Text(date,style: .time)
            .font(.title2)
            .kerning(-0.2)
            .fontWeight(.regular)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigBoldText : View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .font(.title)
            .kerning(2.0)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
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
            BodyText(textInput: "Your current score is 200")
            ButtonText(textInput: "Start New Round")
            ScoreText(score: 10)
            DateText(date: Date())
            BigBoldText(text: "LeaderBoard")
   
            
        }
        .padding()
    }
}
