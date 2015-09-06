//
//  requestClient.swift
//  UItableView
//
//  Created by 高彬 on 15/9/6.
//  Copyright (c) 2015年 erweimashengchengqi. All rights reserved.
//

import UIKit

class requestClient: AFHTTPSessionManager {
    class var sharedInstance : requestClient {
        struct Static {
            static var onceToken:dispatch_once_t = 0
            static var instance:requestClient? = nil
        }
        
        dispatch_once(&Static.onceToken, { () -> Void in
            var url:NSURL = NSURL(string: "")!
            Static.instance = requestClient(baseURL: url)
        })
        
        return Static.instance!
        
    }
}
