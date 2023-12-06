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
    private var player: SKSpriteNode?
    private var hurdle: SKSpriteNode?
    private var score = 0
    
    override func didMove(to view: SKView) {
        self.playerScore = self.childNode(withName: "//playScore") as? SKLabelNode
        self.player = self.childNode(withName: "//Player") as? SKSpriteNode
        self.hurdle = self.childNode(withName: "//Hurdle") as? SKSpriteNode
        self.playerScore?.text = String(score)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.score += 1
        self.playerScore?.text = String(score)
        print(score)
        let playerAction = SKAction.moveTo(y: CGFloat(150), duration: 2)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {

    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
    //Game functions
    func updateScoreDisplay() {
        self.playerScore?.text = String(score)
    }
}
