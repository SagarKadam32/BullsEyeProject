//
//  Bulls_EyeTests.swift
//  Bulls EyeTests
//
//  Created by Sagar Kadam on 23/05/22.
//

import XCTest
@testable import Bulls_Eye

class Bulls_EyeTests: XCTestCase {
    
    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
    }
    
    override func tearDownWithError() throws {
        game = nil
    }
    
    func testScorePositive(){
        let guess = game.target + 5
        let score =  game.point(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative(){
        let guess = game.target - 5
        let score = game.point(sliderValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    
    
    /*
    func testExample() throws {
        XCTAssertEqual(game.point(sliderValue: 50), 999)
    }*/
    
    
}