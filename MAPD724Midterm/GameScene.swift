//
//  GameScene.swift
//  MAPD724Midterm
//
//  Created by Oguz Bayral on 21.02.2019.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
     var ScoreLabel = SKLabelNode(text: "Score")
     var PlayAgainLabel:SKLabelNode = SKLabelNode(text: "Play Again")
    
    override func didMove(to view: SKView) {
        ScoreLabel.position.x = 10
        ScoreLabel.position.y =  10
        
        ScoreLabel.fontColor = UIColor.yellow
        ScoreLabel.fontSize = 48.0
        ScoreLabel.zPosition = 5
        ScoreLabel.fontName = "Arial Bold"
        
        
        
        addChild(ScoreLabel)
        
        PlayAgainLabel.position.x =  50
        PlayAgainLabel.position.y =  50
        
        PlayAgainLabel.fontColor = UIColor.yellow
        PlayAgainLabel.fontSize = 48.0
        PlayAgainLabel.zPosition = 5
        PlayAgainLabel.fontName = "Arial Bold"
        
        
        
        addChild(PlayAgainLabel)
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
       
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
       
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
