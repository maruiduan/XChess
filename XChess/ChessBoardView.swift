//
//  ChessBoardView.swift
//  XChess
//
//  Created by maruiduan on 14-6-11.
//  Copyright (c) 2014年 Ben. All rights reserved.
//

import UIKit

protocol ChessBoardViewDelegate{
    func chessBoardDidTouch(var chess: IChess, var location : Location);
}

class ChessBoardView : UIView{
    init(frame: CGRect) {
        super.init(frame:frame)
        
    }
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        
    }
}
