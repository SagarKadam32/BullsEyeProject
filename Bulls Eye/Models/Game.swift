//
//  Game.swift
//  Bulls Eye
//
//  Created by Sagar Kadam on 23/05/22.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func point(sliderValue : Int) -> Int{
        /*
         var difference: Int

        if sliderValue > target {
            difference = sliderValue - target
        }else if target > sliderValue {
            difference = target - sliderValue
        }else{
            difference = 0
        }*/
        
        /*
        difference = target - sliderValue
        if difference < 0 {
            difference = difference * -1
        }*/
        
        let difference = abs(target - sliderValue)
        let awardedPoints = 100 - difference
        return awardedPoints
    }
}
