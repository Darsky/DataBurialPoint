//
//  DataBurialPointModel.swift
//  DataBurialPoint_Swift
//
//  Created by Darsky on 2017/12/23.
//  Copyright © 2017年 Darsky. All rights reserved.
//

import UIKit

class DataBurialPointModel: NSObject
{
    var index:NSInteger = 0
    var name:String = ""
    var page:String = ""
    var operationTime:String = ""
    

    override init()
    {
        let formatter:DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyMMdd_HHmmssSSS"
        self.operationTime = formatter.string(from: Date())
    }
}
