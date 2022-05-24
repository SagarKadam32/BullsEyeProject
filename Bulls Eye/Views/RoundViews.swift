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
    }
}

struct PreviewView: View {
    var body: some View {
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
    }
}

struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
