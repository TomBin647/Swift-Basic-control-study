//
//  ViewController.swift
//  UItableView
//
//  Created by 高彬 on 15/9/1.
//  Copyright (c) 2015年 erweimashengchengqi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIAlertViewDelegate,UITableViewDelegate,UITableViewDataSource {

    var firstArray = [String]()
    
    var ks_screenWidth = UIScreen.mainScreen().bounds.size.width
    
    var ks_screenHight = UIScreen.mainScreen().bounds.size.height
    
    var tableFirst:UITableView!
    
    var firstButton:UIButton!
    
    var alart:UIAlertView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title = "Swift"
        
        firstArray = ["asdsada","dsds","3fdfd","ewqqe","fdsf","dsff","dsfs","dasdasd","dasdasd","fdsfsd","sdfsdf","sdfgfdgdf","hgfhfg","213123","24324","dasdasd"];
        
        firstButton = UIButton(frame: CGRectMake(0, 64, ks_screenWidth, 44))
        firstButton .setTitle("你好", forState: UIControlState.Normal)
        firstButton.setBackgroundImage(UIImage(named:"wodehaizi@2x"), forState: UIControlState.Normal)
        //firstButton.backgroundColor = UIColor.blackColor()
        firstButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        firstButton.addTarget(self, action: Selector("buttonClick"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(firstButton)
        
        
        tableFirst = UITableView(frame: CGRectMake(0, 108, ks_screenWidth, ks_screenHight-108))
        tableFirst.delegate = self
        tableFirst.dataSource = self
        tableFirst.rowHeight = 60
        //tableFirst.contentSize = CGSizeMake(0,ks_screenHight * 3)
        self.view.addSubview(tableFirst)
        
        tableFirst.registerClass(FirstTableViewCell.self, forCellReuseIdentifier: "first")
        
        
        tableFirst.reloadData()
        
        
        NSLog("%@",firstArray)

    }
    
    func buttonClick() {
        alart = UIAlertView(title: "你好", message: "你好Swift", delegate: self, cancelButtonTitle: "取消")
        alart.show()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "人名"
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return firstArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("first") as! FirstTableViewCell
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        cell.nameLabel.text = firstArray[indexPath.row]
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
       
        if indexPath.row == firstArray.count-1 {
           var second = SecondViewController()
            self.navigationController?.pushViewController(second, animated: false)
        } else {
            var alartNew = UIAlertView(title: "你好", message:firstArray[indexPath.row], delegate: self, cancelButtonTitle: "取消")
            alartNew.show()
        }
        
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        if cell.respondsToSelector("setLayoutMargins:"){
            cell.layoutMargins = UIEdgeInsetsZero
        }
        if cell.respondsToSelector("setSeparatorInset:"){
            cell.separatorInset = UIEdgeInsetsZero
        }
        if cell .respondsToSelector("setPreservesSuperviewLayoutMargins:"){
            cell.preservesSuperviewLayoutMargins = false
        }
    }
    
    
    
}

