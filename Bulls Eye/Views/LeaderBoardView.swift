//
//  LeaderBoardView.swift
//  Bulls Eye
//
//  Created by Sagar Kadam on 27/05/22.
//

import SwiftUI

struct LeaderBoardView: View {
    var body: some View {
//        List(0 ..< 2) { item in
            RowView(index: 1, score: 10, date: Date())
//        }
    }
}

struct RowView : View {
    var index: Int
    var score: Int
    var date: Date
    var body: some View {
        HStack() {
            RoundedTextView(textInput: String(index))
            Spacer()
            ScoreText(score: score)
                .frame(width: Constants.Leaderboard.leaderBoardScoreColWidth)
            Spacer()
            DateText(date: date)
                .frame(width: Constants.Leaderboard.leaderBoardDateColWidth)
        }.background(
            RoundedRectangle(cornerRadius: .infinity)
                .strokeBorder(Color("LeaderBoardRowColor"), lineWidth: Constants.Leaderboard.strokeWidth)
        ).padding(.leading)
        .padding(.trailing)
        .frame(maxWidth: Constants.Leaderboard.leaderBoardMaxRowlWidth)
    }
}

struct LeaderBoardView_Previews: PreviewProvider {
    static var previews: some View {
        LeaderBoardView()
            .environment(\.sizeCategory, .large)
        LeaderBoardView().previewLayout(.fixed(width: 568, height: 320))
        
        LeaderBoardView().preferredColorScheme(.dark)
        LeaderBoardView().previewLayout(.fixed(width: 568, height: 320)).preferredColorScheme(.dark)
    }
}
