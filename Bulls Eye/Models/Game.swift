//
//  Game.swift
//  Bulls Eye
//
//  Created by Sagar Kadam on 23/05/22.
//

import Foundation

struct LeaderBoardEntry {
    let score: Int
    let date: Date
}

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    var leaderBoardEntries:[LeaderBoardEntry] = []
    
    func point(sliderValue : Int) -> Int{
        let difference = abs(target - sliderValue)
        var bonus: Int = 0
        if difference == 0 {
            bonus = 100
        }else if difference <= 2 {
            bonus = 50
        }
        return 100 - difference + bonus
    }
    
    mutating func startNewRound(points: Int){
        score += points
        round += 1
        target = Int.random(in: 1...100)
        addToLeaderBoard(points: points)
    }
    
    mutating func addToLeaderBoard(points: Int){
        leaderBoardEntries.append( LeaderBoardEntry(score: points, date: Date()))
        leaderBoardEntries.sort { $0.score > $1.score }
        }
    
    mutating func restart(){
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
}
