//
//  AYCell.swift
//  RxSwiftDemo
//
//  Created by wpsd on 2016/11/25.
//  Copyright © 2016年 wpsd. All rights reserved.
//

import UIKit

class AYCell: UITableViewCell {
    
    var user: AYUser? {
        didSet{
            let str = "\(user?.screenName)关注了\(user?.followCount)人，并且被\(user?.followingCount)人关注了"
            textLabel?.text = str
            textLabel?.numberOfLines = 0
            backgroundColor = tag % 2 == 0 ? UIColor.white : UIColor.lightGray
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
