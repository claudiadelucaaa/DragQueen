//
//  GameScene.swift
//  DragGame
//
//  Created by Claudia De Luca on 06/12/23.
//

import SpriteKit
import GameplayKit

struct PhysicsCategory {
    static let none: UInt32 = 0
    static let all: UInt32 = UInt32.max
    static let player: UInt32 = 0b1
    static let enemies: UInt32 = 0b10
    static let coins: UInt32 = 0b11
}

class GameScene: SKScene {
    
//MARK: SCORE
    private var playerScore: SKLabelNode?
    private var score = 0
    
    override func didMove(to view: SKView) {
        self.playerScore = self.childNode(withName: "//playScore") as? SKLabelNode
        self.playerScore?.text = String(score)
    }
    
    func touchDown(atPoint pos: CGPoint){
        self.score += 1
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
