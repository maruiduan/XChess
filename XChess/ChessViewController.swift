//
//  ChessViewController.swift
//  XChess
//
//  Created by maruiduan on 14-6-11.
//  Copyright (c) 2014年 Ben. All rights reserved.
//

import UIKit

class ChessViewController: UIViewController {
    var gameModel : Game!
    var chessView : ChessBoardView!
    
    init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!){
        super.init(nibName: nibName,bundle: nibBundleOrNil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector:"addChess", name: kAddChessNotificationKey, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector:"eatChess", name: kEatChessNotificationKey, object: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.gameModel = Game()
        self.chessView = ChessBoardView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addChess(notificaiton:NSNotification){
        var obj : AnyObject! = notificaiton.object
    }
    
    func eatChess(notificaiton:NSNotification){
        var obj : AnyObject! = notificaiton.object
    }
}

