//
//  SecondViewController.swift
//  DataBurialPoint_Swift
//
//  Created by Darsky on 2017/12/27.
//  Copyright © 2017年 Darsky. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        let model = DataBurialPointModel()
        model.name = "已经展示页面SecondController "
        model.page = "SecondController"
        DataBurialPointManager.shareManager.insetDataWithModel(model: model)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
