//
//  Game.swift
//  XChess
//
//  Created by maruiduan on 14-6-11.
//  Copyright (c) 2014年 Ben. All rights reserved.
//

import Foundation

let kAddChessNotificationKey : String = "kAddChessNotificationKey"

class Game{
    var chessBoard : XChessBoard
    var cats : Array<CatChess>
    var mouses : Array<MouseChess>
    init(){
        self.chessBoard = XChessBoard()
        self.mouses = Array<MouseChess>()
        self.cats = Array<CatChess>()
        initMouse()
        initCat()
    }
    
    deinit{
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    func initMouse(){
        for i in 1...5{
            var mouse_one = MouseChess(x: 2,y: 2)
            var mouse_two = MouseChess(x: 2,y: 4)
            var mouse_three = MouseChess(x: 4,y: 2)
            var mouse_four = MouseChess(x: 4,y: 4)
            self.mouses.append(mouse_one)
            self.mouses.append(mouse_two)
            self.mouses.append(mouse_three)
            self.mouses.append(mouse_four)
            NSNotificationCenter.defaultCenter().postNotificationName(kAddChessNotificationKey,object:mouse_one)
            NSNotificationCenter.defaultCenter().postNotificationName(kAddChessNotificationKey,object:mouse_two)
            NSNotificationCenter.defaultCenter().postNotificationName(kAddChessNotificationKey,object:mouse_three)
            NSNotificationCenter.defaultCenter().postNotificationName(kAddChessNotificationKey,object:mouse_four)
        }
    }
    
    func initCat(){
        var cat_one = CatChess(x: 2,y: 3)
        var cat_two = CatChess(x: 4,y: 3)
        self.cats.append(cat_one)
        self.cats.append(cat_two)
        NSNotificationCenter.defaultCenter().postNotificationName(kAddChessNotificationKey,object:cat_one)
        NSNotificationCenter.defaultCenter().postNotificationName(kAddChessNotificationKey,object:cat_two)
    }
}