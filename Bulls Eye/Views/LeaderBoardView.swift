//
//  LeaderBoardView.swift
//  Bulls Eye
//
//  Created by Sagar Kadam on 27/05/22.
//

import SwiftUI

struct LeaderBoardView: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView()
            LabelView()
            RowView(index: 1, score: 10, date: Date())
        }
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

struct HeaderView : View {
    var body: some View {
        ZStack {
            BigBoldText(text: "LeaderBoard")
            HStack {
                Spacer()
                Button(action: {
                }){
                    RoundedImageViewFilled(systemName: "xmark")
                        .padding(.trailing)
                }
            }

        }
    }
}

struct LabelView: View {
    var body: some View {
        HStack{
            Spacer()
                .frame(width:Constants.General.roundedViewLength)
            Spacer()
            LabelTextView(textInput: "Score")
                .frame(width:Constants.Leaderboard.leaderBoardScoreColWidth)
            Spacer()
            LabelTextView(textInput: "Date")
                .frame(width:Constants.Leaderboard.leaderBoardDateColWidth)
        }.padding(.leading)
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
