//
//  ChessBoard.swift
//  XChess
//
//  Created by maruiduan on 14-6-11.
//  Copyright (c) 2014年 Ben. All rights reserved.
//

import Foundation

protocol IChessBorod{
    var width : Int{get};
    var heigth : Int{get};
}

class ChessBoardBase : IChessBorod{
    var width : Int;
    var heigth : Int;
    init(){
        self.width = 5;
        self.heigth = 5;
    }
}

class XChessBoard : ChessBoardBase{
    init(){
        super.init()
        self.width = 5;
        self.heigth = 5;
    }
}

