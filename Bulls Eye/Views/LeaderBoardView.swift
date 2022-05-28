//
//  LeaderBoardView.swift
//  Bulls Eye
//
//  Created by Sagar Kadam on 27/05/22.
//

import SwiftUI

struct LeaderBoardView: View {
    @Binding  var leaderBoardIsShowing: Bool
    @Binding var game: Game

    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                HeaderView(leaderBoardIsShowing: $leaderBoardIsShowing)
                LabelView()
                ScrollView {
                    VStack(spacing: 10.0) {
                        ForEach(game.leaderBoardEntries.indices) { i in
                            let leaderBoardEntry = game.leaderBoardEntries[i]
                            RowView(index: i, score: leaderBoardEntry.score, date: leaderBoardEntry.date)
                        }
                    }
                }
            }
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
    @Binding  var leaderBoardIsShowing: Bool
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        ZStack {
            HStack {
                if  verticalSizeClass == .regular && horizontalSizeClass == .compact {
                    BigBoldText(text: "LeaderBoard")
                        .padding(.leading)
                    Spacer()
                }else{
                    BigBoldText(text: "LeaderBoard")
                }
            }.padding(.top)
            HStack {
                Spacer()
                Button(action: {
                    leaderBoardIsShowing = false
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
    static private var leaderBoardIsShowing = Binding.constant(false)
    static private var game = Binding.constant(Game(loadTestData: true))

    static var previews: some View {

        LeaderBoardView(leaderBoardIsShowing: leaderBoardIsShowing, game: game)
            .environment(\.sizeCategory, .large)
        LeaderBoardView(leaderBoardIsShowing: leaderBoardIsShowing, game: game).previewLayout(.fixed(width: 568, height: 320))
        
        LeaderBoardView(leaderBoardIsShowing: leaderBoardIsShowing, game: game).preferredColorScheme(.dark)
        LeaderBoardView(leaderBoardIsShowing: leaderBoardIsShowing, game: game).previewLayout(.fixed(width: 568, height: 320)).preferredColorScheme(.dark)
    }
}
