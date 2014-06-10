//
//  Chess.swift
//  XChess
//
//  Created by maruiduan on 14-6-9.
//  Copyright (c) 2014年 Ben. All rights reserved.
//

import Foundation

struct Location{
    var x: Int
    var y: Int
}

enum CHESS_TYPE : Int{
    case kNone,kCat,kMouse
}

var BASE : Int = 50
var WIDTH : Int = 5

protocol Chess{
    var location : Location{get set}
    var type : CHESS_TYPE{get}
    func move(moveTo : Location) -> Bool
}

class BaseChess : Chess{
    init(){
        self.location = Location(x:0,y:0)
        self.type = CHESS_TYPE.kNone
    }
    var location : Location;
    var type : CHESS_TYPE;
    func move(moveTo: Location) -> Bool {
        if moveTo.x > 5 || moveTo.y > 5 {
            return false
        }
        return true
    }
}

class CatChess : BaseChess{
    init(){
        super.init()
        self.type = CHESS_TYPE.kCat
    }
    func eat(var chess : Chess) -> Bool {
        return true
    }
}

class MouseChess : BaseChess{
    init(){
        super.init()
        self.type = CHESS_TYPE.kMouse
    }
}
