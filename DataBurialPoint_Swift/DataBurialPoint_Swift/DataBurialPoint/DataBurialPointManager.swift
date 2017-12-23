//
//  DataBurialPointManager.swift
//  DataBurialPoint_Swift
//
//  Created by Darsky on 2017/12/23.
//  Copyright © 2017年 Darsky. All rights reserved.
//

import UIKit
import FMDB

class DataBurialPointManager: NSObject
{
    static let shareManager = DataBurialPointManager.init()
    var _dataBase:FMDatabase?
    var dataBase:FMDatabase?
    {
        set
        {
            _dataBase = newValue
        }
        get
        {
            if _dataBase == nil
            {
                var path:String = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0]
                path += "/DataBurialPoint.sqlite"
                print("数据库DataBurialPoint.sqlite 的路径===" + path)
                _dataBase = FMDatabase.init(path: path)
            }
            
            return _dataBase
        }
    }
    
    func insetDataWithModel(model:DataBurialPointModel) -> ()
    {
        if self.dataBase!.open() && self.createTable()
        {
            let sql = "INSERT INTO Data_Burial_Point (name,page,operationTime) VALUES (?,?,?)"
            do
            {
                try self.dataBase?.executeUpdate(sql, values: [model.name,model.page,model.operationTime])
                print("数据库操作成功")
            }
            catch
            {
                print(self.dataBase?.lastErrorMessage())
            }

            self.dataBase?.close()
        }
    }
    
    func createTable() -> Bool
    {
        let sql = "CREATE TABLE IF NOT EXISTS Data_Burial_Point( \n" +
            "id INTEGER PRIMARY KEY AUTOINCREMENT, \n" +
            "name TEXT, \n" +
            "page TEXT, \n" +
            "operationTime INTEGER"+");"
        
        return self.dataBase!.executeStatements(sql)
    }
}
