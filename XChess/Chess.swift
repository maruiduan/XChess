//
//  Chess.swift
//  XChess
//
//  Created by maruiduan on 14-6-9.
//  Copyright (c) 2014年 Ben. All rights reserved.
//

import Foundation

let kEatChessNotificationKey : String = "kEatChessNotificationKey"

struct Location{
    var x: Int
    var y: Int
}

enum CHESS_TYPE : Int{
    case kNone,kCat,kMouse
}

enum CHESS_ALIVE : Int{
    case kALIVE,kDEAD
}

var BASE : Int = 50
var SIZE_WIDTH : Int = 5
var SIZE_HEIGHT : Int = 5

protocol IChess{
    func move(moveTo : Location)
    func canMove(moveTo: Location)->Bool
}

protocol ICanEat{
    func eat(var food : ICanDead,BaseChess)
    func canEat(var food : ICanDead,BaseChess) -> Bool
}

protocol ICanDead{
    var alive : CHESS_ALIVE{get}
    func dead()
}

class BaseChess : IChess{
    init(var x : Int , var y : Int){
        self.location = Location(x:x,y:y)
    }
    var location : Location
    
    func canMove(moveTo: Location)->Bool{
        if moveTo.x > SIZE_WIDTH || moveTo.y > SIZE_HEIGHT {
            return false
        }
        return true
    }
    func move(moveTo: Location){
        
    }
}

class CatChess : BaseChess,ICanEat{
    init(var x : Int , var y : Int){
        super.init(x:x,y:y)
    }
    func canEat(var food : ICanDead,BaseChess) -> Bool {
        return false
    }
    func eat(var food : ICanDead,BaseChess){
        NSNotificationCenter.defaultCenter().postNotificationName(kAddChessNotificationKey,object:nil)
     }
}

class MouseChess : BaseChess,ICanDead{
    var alive : CHESS_ALIVE
    init(var x : Int , var y : Int){
        self.alive = CHESS_ALIVE.kALIVE
        super.init(x:x,y:y)
    }
    func dead(){
        alive = CHESS_ALIVE.kDEAD
    }
}
