//
//  ViewController.swift
//  swift02_project
//
//  Created by 悠然天地 on 16/1/12.
//  Copyright © 2016年 KuaiYong. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBAction func tap(sender: AnyObject) {
        print("test22222")
    }
    @IBOutlet weak var swiftTestButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "测试1"
        self.view.backgroundColor = UIColor.whiteColor()
        
        //设置一个button
        let btn = UIButton(type: UIButtonType.Custom)
        btn.frame = CGRectMake(10, 100, 100, 100)
        btn.setTitle("确定", forState: UIControlState.Normal)
        btn.addTarget(self, action: "buttonPressed", forControlEvents: UIControlEvents.TouchUpInside)
        btn.backgroundColor = UIColor.redColor()
        self.view.addSubview(btn)
    }

   
    func buttonPressed(){
        print("buttonPressed")
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }

}

