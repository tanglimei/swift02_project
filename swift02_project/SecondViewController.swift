//
//  SecondViewController.swift
//  swift02_project
//
//  Created by 悠然天地 on 16/1/12.
//  Copyright © 2016年 KuaiYong. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate {
    let items:[String] = ["d","d","a"]
    var tableView:UITableView?
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.yellowColor()

        tableView = UITableView.init(frame: self.view.bounds, style: UITableViewStyle.Grouped)
        tableView!.delegate = self
        tableView!.dataSource = self
        self.view.addSubview(tableView!)
        tableView!.backgroundColor = UIColor.yellowColor()
        tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        print(items)
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView!.dequeueReusableCellWithIdentifier("cell")
        cell!.textLabel?.text = self.items[indexPath.row]
        return cell!
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
}
