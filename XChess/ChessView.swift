//
//  ChessView.swift
//  XChess
//
//  Created by maruiduan on 14-6-11.
//  Copyright (c) 2014年 Ben. All rights reserved.
//

import UIKit

class ChessBaseView : UIImageView{
    var selected : Bool
    init(img : UIImage!){
        self.selected = false
        super.init(image:img)
    }
}

class CatChessView : ChessBaseView{
    
}

class MouseChessView : ChessBaseView{
    
}