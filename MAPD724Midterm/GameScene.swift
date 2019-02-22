//
//  GameScene.swift
//  Oguz Bayral-301029119-MidtermTest
//
//  Created by Oguz Bayral on 2019-02-21.
//  Copyright © 2019 Oguz Bayral. All rights reserved.
//
import SpriteKit
import GameplayKit
import UIKit
import AVFoundation

class GameScene: SKScene {
    
    let screenSize = UIScreen.main.bounds
    var screenWidth: CGFloat?
    var screenHeight: CGFloat?
    var winCheckArray: Array<String> = Array()
    
    var banana: Banana?
    var banana2: Banana?
    var banana3: Banana?
    
    var cherry: Cherry?
    var cherry2: Cherry?
    var cherry3: Cherry?
    
    var grape: Grape?
    var grape2: Grape?
    var grape3: Grape?
    
    
    var gameOverLabel: SKLabelNode!
    var score = SKLabelNode(text: "Score")
    var exitLabel = SKLabelNode(text: "Exit Game")
    var moneyLabel = SKLabelNode(text: "")
    var playAgain = SKLabelNode(text: "Play")
    var status = SKLabelNode(text: "Status")
    var x:Int = 3
    var ownedMoney:Int = 1000
    var moneyChange:Int = 0
    
    
    
    
    
    override func didMove(to view: SKView) {
        
        score.name="score"
        score.position.x = 0
        score.position.y = 450
        score.fontColor = UIColor.red
        score.fontSize = 30.0
        score.zPosition = 5
        score.fontName = "Arial Bold"
        // score.text = "Your Score is : 0"
        addChild(score)
        
        exitLabel.name="exitGame"
        exitLabel.position.x = 0
        exitLabel.position.y = -530
        exitLabel.fontColor = UIColor.red
        exitLabel.fontSize = 30.0
        exitLabel.zPosition = 5
        exitLabel.fontName = "Arial Bold"
        // score.text = "Your Score is : 0"
        addChild(exitLabel)
        
        status.position.x = 0
        status.position.y = 300
        status.fontColor = UIColor.red
        status.fontSize = 30.0
        status.zPosition = 5
        status.fontName = "Arial Bold"
        addChild(status)
        
        /*
         lb1.position.x = -250
         lb1.position.y = 0
         lb1.fontColor = UIColor.red
         lb1.fontSize = 30.0
         lb1.zPosition = 5
         lb1.fontName = "Arial Bold"
         // score.text = "Your Score is : 0"
         addChild(lb1)
         
         lb2.position.x = -80
         lb2.position.y = 0
         lb2.fontColor = UIColor.yellow
         lb2.fontSize = 30.0
         lb2.zPosition = 5
         lb2.fontName = "Arial Bold"
         // score.text = "Your Score is : 0"
         addChild(lb2)
         
         lb3.position.x = 80
         lb3.position.y = 0
         lb3.fontColor = UIColor.yellow
         lb3.fontSize = 30.0
         lb3.zPosition = 5
         lb3.fontName = "Arial Bold"
         // score.text = "Your Score is : 0"
         addChild(lb3)
         
         lb4.position.x = 250
         lb4.position.y = 0
         lb4.fontColor = UIColor.yellow
         lb4.fontSize = 30.0
         lb4.zPosition = 5
         lb4.fontName = "Arial Bold"
         // score.text = "Your Score is : 0"
         addChild(lb4)
         */
        
        playAgain.name = "playAgain"
        playAgain.position.x = 0
        playAgain.position.y = -450
        playAgain.fontColor = UIColor.red
        playAgain.fontSize = 30.0
        playAgain.zPosition = 5
        playAgain.fontName = "Arial Bold"
        addChild(playAgain)
        
        
        banana = Banana()
        banana2 = Banana()
        banana3 = Banana()
        banana!.position = CGPoint(x: -250.0, y: 0)
        addChild(banana!)
        
        cherry = Cherry()
        cherry2 = Cherry()
        cherry3 = Cherry()
        cherry?.position = CGPoint(x: 0.0, y: 0.0)
        addChild(cherry!)
        
        
        grape = Grape()
        grape2 = Grape()
        grape3 = Grape()
        grape?.position = CGPoint(x: 250.0, y: 0.0)
        addChild(grape!)
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "playAgain" {
                //Random Number Generated between 1 and 4
                winCheckArray.removeAll()
                banana?.removeFromParent()
                banana2?.removeFromParent()
                banana3?.removeFromParent()
                cherry?.removeFromParent()
                cherry2?.removeFromParent()
                cherry3?.removeFromParent()
                grape?.removeFromParent()
                grape2?.removeFromParent()
                grape3?.removeFromParent()
                ownedMoney -= 50
                moneyChange -= 50
                
                if(ownedMoney < 100) {
                    print("Game Over")
                    
                    if (touchedNode.name == "playAgain"){
                        winCheckArray.removeAll()
                        banana?.removeFromParent()
                        banana2?.removeFromParent()
                        banana3?.removeFromParent()
                        cherry?.removeFromParent()
                        cherry2?.removeFromParent()
                        cherry3?.removeFromParent()
                        grape?.removeFromParent()
                        grape2?.removeFromParent()
                        grape3?.removeFromParent()
                        ownedMoney = 1000
                        moneyChange = 0
                        if let gameScene = GameScene(fileNamed: "GameScene") {
                            gameScene.scaleMode = .aspectFill
                            view?.presentScene(gameScene)
                        }
                    }
                }else{
                    
                    for n in 1...3 {
                        let number = Int.random(in: 1 ..< 4)
                        if (n==1) {
                            switch number {
                            case 1:
                                winCheckArray.append("Banana")
                                banana!.position = CGPoint(x: -250.0, y: 0.0)
                                addChild(banana!)
                            case 2:
                                winCheckArray.append("Cherry")
                                cherry!.position = CGPoint(x: -250.0, y: 0.0)
                                addChild(cherry!)
                            case 3:
                                winCheckArray.append("Grape")
                                grape!.position = CGPoint(x: -250.0, y: 0.0)
                                addChild(grape!)
                            default:
                                print("Something is Wrong")
                                
                            }
                        }
                            
                        else if (n==2) {
                            switch number {
                            case 1:
                                winCheckArray.append("Banana")
                                banana2!.position = CGPoint(x: 0.0, y: 0.0)
                                addChild(banana2!)
                            case 2:
                                winCheckArray.append("Cherry")
                                cherry2!.position = CGPoint(x: 0.0, y: 0.0)
                                addChild(cherry2!)
                            case 3:
                                winCheckArray.append("Grape")
                                grape2!.position = CGPoint(x: 0.0, y: 0.0)
                                addChild(grape2!)
                            default:
                                print("Something is Wrong")
                                
                            }
                        }
                            
                        else if (n==3) {
                            switch number {
                            case 1:
                                winCheckArray.append("Banana")
                                banana3!.position = CGPoint(x: 250.0, y: 0.0)
                                addChild(banana3!)
                            case 2:
                                winCheckArray.append("Cherry")
                                cherry3!.position = CGPoint(x: 250.0, y: 0.0)
                                addChild(cherry3!)
                            case 3:
                                winCheckArray.append("Grape")
                                grape3!.position = CGPoint(x: 250.0, y: 0.0)
                                addChild(grape3!)
                            default:
                                print("Something is Wrong")
                                
                            }
                        }
                    }
                    print(winCheckArray)
                    
                    if((winCheckArray[0] == winCheckArray[1]) && (winCheckArray[1] == winCheckArray[2]))
                    {
                        ownedMoney += 400
                        moneyChange += 400
                        
                        print(ownedMoney)
                    }
                    if(moneyChange>0){
                        score.text = "You win :" + String(moneyChange)
                    }else{
                        score.text = "You lost :" + String(moneyChange)
                    }
                    status.text = "Total Money : " + String(ownedMoney)
                }
                
            }
            if touchedNode.name == "exitGame" {
                print("exit clicked")
                exit(0)
                
            }
        }
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
