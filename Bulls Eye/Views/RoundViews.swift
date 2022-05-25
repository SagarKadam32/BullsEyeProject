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
            .frame(width: 56.0, height: 56.0)
            .overlay(
                    Circle()
                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2)
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
            .frame(width: 56.0, height: 56.0)
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
                RoundedRectangle(cornerRadius: 21.0)                    .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 2)
            )
    }
    
}

struct PreviewView: View {
    var body: some View {
        VStack(spacing: 30) {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundRectTextView(textInput: "999")
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
