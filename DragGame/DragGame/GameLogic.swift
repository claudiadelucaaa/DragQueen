//
//  GameLogic.swift
//  DragGame
//
//  Created by Claudia De Luca on 06/12/23.
//

import Foundation

class GameLogic: ObservableObject {
    
    // Single instance of the class, for every part of the field to have the same instance an onley have it ones
    static let shared: GameLogic = GameLogic()
    
    
    
    // MARK: - Set up( What happend when the game start)
    
    // Function responsible to set up the game before it starts.
    func setUpGame() {
        
        // TODO: Customize!-------------------
        
        self.currentScore = 0
        self.sessionDuration = 0
        
        self.isGameOver = false
    }
    
    
    // MARK: - Score func and declaretion
    
    // Keeps track of the current score of the player
    @Published var currentScore: Int = 0
    
    // Increases the score by a certain amount of points
    func score(points: Int) {
        
        // TODO: Customize!-------------------------------------
        
        self.currentScore = self.currentScore + points
    }
    
    // MARK: - Time func and declaretion
    
    
    // Keep tracks of the duration of the current session in number of seconds
    @Published var sessionDuration: TimeInterval = 0
    
    func increaseSessionTime(by timeIncrement: TimeInterval) {
        self.sessionDuration = self.sessionDuration + timeIncrement
    }
    
    func restartGame() {
        
        // TODO: Customize!-------------------------
        
        self.setUpGame()
    }
    
    // MARK: - Lose func and declaretion
    
    // Game Over Conditions
    @Published var isGameOver: Bool = false
    
    func finishTheGame() {
        if self.isGameOver == false {
            self.isGameOver = true
        }
    }
}
