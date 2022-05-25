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
    
    
    func testNewRound(){
        game.startNewRound(points: 100)
        XCTAssertEqual(game.score, 100)
        XCTAssertEqual(game.round, 2)
    }
    
    func testScoreExact(){
        let guess = game.target
        let score = game.point(sliderValue: guess)
        XCTAssertEqual(score, 200)
    }
    
    func testScoreClose(){
        let guess = game.target + 2
        let score = game.point(sliderValue: guess)
        XCTAssertEqual(score, 98 + 50)
    }
 }
