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
        backgroundColor = SKColor.blackColor()
    }
    
}