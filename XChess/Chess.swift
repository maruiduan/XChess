//
//  Chess.swift
//  XChess
//
//  Created by maruiduan on 14-6-9.
//  Copyright (c) 2014年 Ben. All rights reserved.
//

import Foundation

struct Location{
    int x
    int y
}

enum CHESS_TYPE : Int{
    case kCat,kMouse
}

protocol Chess{
    var location : Location{get set}
    var type : CHESS_TYPE{get}
    func move(moveTo : Location) -> Bool
}

