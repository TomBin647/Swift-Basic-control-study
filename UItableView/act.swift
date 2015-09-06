//
//  act.swift
//  UItableView
//
//  Created by 高彬 on 15/9/6.
//  Copyright (c) 2015年 erweimashengchengqi. All rights reserved.
//

import UIKit

class act: NSObject {
    
    
    func hasAct(tag:Int) ->String {
        switch (tag) {
        case 1:return "Movie"
        case 2:return "CCTV"
        case 3:return "Sport Tv"
        default:
            return "Area Tv"
        }
    }
    
    
    override init() {
        println("act constructor is called.")
    }
    
    deinit
    {
        println("act destroyed is called.")
    }
}
