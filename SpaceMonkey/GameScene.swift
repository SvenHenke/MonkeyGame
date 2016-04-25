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
        enemy.position = CGPoint(x: frame.size.width, y: frame.size.height * random(0, max:1))
        // 5
        addChild(enemy)
    }
}