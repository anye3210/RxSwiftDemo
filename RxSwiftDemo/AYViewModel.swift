//
//  AYViewModel.swift
//  RxSwiftDemo
//
//  Created by wpsd on 2016/11/25.
//  Copyright © 2016年 wpsd. All rights reserved.
//

import UIKit
import RxSwift
import RxDataSources

class AYViewModel: NSObject {

    func getUsers() -> Observable<[SectionModel<String, AYUser>]> {
        return Observable.create({ (observer) -> Disposable in
            let users = [AYUser(screenName: "John", followCount: 34, followingCount: 433),
                         AYUser(screenName: "Cooper", followCount: 656, followingCount: 45),
                         AYUser(screenName: "Json", followCount: 54, followingCount: 5),
                         AYUser(screenName: "Zephyr", followCount: 33, followingCount: 23),
                         AYUser(screenName: "Zaker", followCount: 98, followingCount: 89),
                         AYUser(screenName: "Paul", followCount: 567, followingCount: 65),
                         ]
            let section = [SectionModel(model: "", items: users)]
            observer.onNext(section)
            observer.onCompleted()
            return SingleAssignmentDisposable()
        })
    }
    
}
