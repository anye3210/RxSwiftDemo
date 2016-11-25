//
//  AYUser.swift
//  RxSwiftDemo
//
//  Created by wpsd on 2016/11/25.
//  Copyright © 2016年 wpsd. All rights reserved.
//

import UIKit

class AYUser: NSObject {

    var screenName: String?
    var followCount: Int?
    var followingCount: Int?
    
    init(screenName: String, followCount: Int, followingCount: Int) {
        super.init()
        self.screenName = screenName
        self.followCount = followCount
        self.followingCount = followingCount
    }
    
}
