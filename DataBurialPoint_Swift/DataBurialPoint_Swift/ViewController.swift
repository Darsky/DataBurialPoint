//
//  ViewController.swift
//  DataBurialPoint_Swift
//
//  Created by Darsky on 2017/12/23.
//  Copyright © 2017年 Darsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var _logView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)

    }
    
    @IBAction func didToNextPageButtonTouch(_ sender: Any)
    {
        let model = DataBurialPointModel()
        model.name = "将要进入页面SecondController"
        model.page = "ViewController"
        DataBurialPointManager.shareManager.insetDataWithModel(model: model)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

