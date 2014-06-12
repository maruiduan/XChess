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
    var location : Location{get set}
    var type : CHESS_TYPE{get}
    var alive : CHESS_ALIVE{get}
    func move(moveTo : Location)
    func canMove(moveTo: Location)->Bool
}

protocol ICanEat{
    func eat(var food : ICanDead,IChess)
    func canEat(var food : ICanDead,IChess) -> Bool
}

protocol ICanDead{
    func dead()
}

class BaseChess : IChess{
    init(var x : Int , var y : Int){
        self.location = Location(x:x,y:y)
        self.type = CHESS_TYPE.kNone
        self.alive = CHESS_ALIVE.kALIVE
    }
    var location : Location
    var type : CHESS_TYPE
    var alive : CHESS_ALIVE
    
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
        self.type = CHESS_TYPE.kCat
    }
    func canEat(var food : ICanDead,IChess) -> Bool {
        return false
    }
    func eat(var food : ICanDead,IChess){
        NSNotificationCenter.defaultCenter().postNotificationName(kAddChessNotificationKey,object:nil)
     }
}

class MouseChess : BaseChess{
    init(var x : Int , var y : Int){
        super.init(x:x,y:y)
        self.type = CHESS_TYPE.kMouse
    }
    func dead(){
        alive = CHESS_ALIVE.kDEAD
    }
}
