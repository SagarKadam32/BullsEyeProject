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

    }
}

struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
    }
}
