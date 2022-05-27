//
//  RoundViews.swift
//  Bulls Eye
//
//  Created by Sagar Kadam on 24/05/22.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundRectViewHeight)
            .overlay(
                    Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
                    .frame(width: 56, height: 56)
            )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundRectViewHeight)
            .background(
                Circle()
                .fill(Color("ButtonFilledBackgroundColor"))
            )
    }
}

struct RoundRectTextView: View {
    var textInput: String

    var body: some View {
        Text(textInput)
            .font(.title3)
            .kerning(-0.2)
            .bold()
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
            .frame(width: 68, height: 56)
            .overlay(
                RoundedRectangle(cornerRadius: Constants.General.roundRectCornerRadius)                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: Constants.General.strokeWidth)
            )
    }
    
}

struct RoundedTextView : View {
    var textInput: String
    var body: some View {
      
        Text(textInput)
            .font(.title3)
            .kerning(-0.2)
            .bold()
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
                Circle()                    .strokeBorder(Color("LeaderBoardRowColor"), lineWidth: Constants.General.strokeWidth)
            )
    }
 
}

struct PreviewView: View {
    var body: some View {
        VStack(spacing: 30) {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundRectTextView(textInput: "999")
            RoundedTextView(textInput: "1")
        }
    }
}

struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
