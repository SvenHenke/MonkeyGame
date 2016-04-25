//
//  GameScene.swift
//  SpaceMonkey
//
//  Created by Main Account on 4/10/15.
//  Copyright (c) 2015 Razeware LLC. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    // 1 - Create the sprite
    let player = SKSpriteNode(imageNamed:"spacemonkey_fly02")
    
    override func didMoveToView(view: SKView) {
        
    // 2 - Position the sprite
        player.position = CGPoint(x:frame.size.width * 0.1, y: frame.size.height * 0.5)
        // 3 - Add the sprite to the scene
        addChild(player)
        
        // 4 - Set scene background color to black
        backgroundColor = SKColor.cyanColor()
   
        
        // Unendlches Aufrufen von Monstern
        
        runAction(SKAction.repeatActionForever(
            SKAction.sequence([
                SKAction.runBlock(spawnEnemy),
                SKAction.waitForDuration(2.0)])))
        
      //Physiks / Gravity für den Spieler einfügen
        player.physicsBody = SKPhysicsBody(circleOfRadius:player.frame.size.width * 0.3)
        player.physicsBody?.allowsRotation = false
    }
    
    //Gegner
    func random() -> CGFloat {
        return CGFloat(Float(arc4random()) / 0xFFFFFFFF)
    }
    
    func random(min: CGFloat, max: CGFloat) -> CGFloat {
        return random() * (max - min) + min
    }
    
    // 1
    func spawnEnemy() {
        // 2
        let enemy = SKSpriteNode(imageNamed: "boss_ship")
        // 3
        enemy.name = "enemy"
        // 4
        enemy.position = CGPoint(x: frame.size.width + enemy.size.width/10,
                                 y: frame.size.height * random(0, max: 1))
        // 5
        addChild(enemy)
    
        // Bewegung der Gegner
        enemy.runAction(
            SKAction.moveByX(-size.width - enemy.size.width, y: 0.0,
                duration: NSTimeInterval(random(5, max: 10))))
    }
    //Spielfigur zum springen bringen
    
    func jumpPlayer() {
        // 1
        let impulse =  CGVector(dx: 0, dy: 75)
        // 2
        player.physicsBody?.applyImpulse(impulse)
       
        
        //jump player
            func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
            jumpPlayer()
            for touch: AnyObject! in touches {
                _ = touch.locationInNode(self)
                
                //Use touchLocation for example: button.containsPoint(touchLocation) meaning the user has pressed the button.
            }
        }
    
        
        
        }
    }
    
