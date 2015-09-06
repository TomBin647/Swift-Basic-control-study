//
//  SecondViewController.swift
//  UItableView
//
//  Created by 高彬 on 15/9/1.
//  Copyright (c) 2015年 erweimashengchengqi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var ks_screenWidth = UIScreen.mainScreen().bounds.size.width
    
    var ks_screenHight = UIScreen.mainScreen().bounds.size.height
    
    
    var scrollerView:UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "学习Swift"
        // Do any additional setup after loading the view.
        var label = UILabel(frame: CGRectMake(0, 64,ks_screenWidth , 40))
        label.backgroundColor = UIColor.yellowColor()
        label.text = "我是第二页的label"
        label.font = UIFont.boldSystemFontOfSize(20)
        label.textAlignment = NSTextAlignment.Center
        self.view.addSubview(label)
        
        var image = UIImageView(frame: CGRectMake(0, 104, ks_screenWidth/2, 40))
        image.image = UIImage(named: "wodehaizi@2x")
        self.view.addSubview(image)
        
        
        scrollerView = UIScrollView(frame: CGRectMake(0, 144, ks_screenWidth, ks_screenHight-144))
        scrollerView.backgroundColor = UIColor.whiteColor()
        scrollerView.contentSize = CGSizeMake(ks_screenWidth * 3, ks_screenHight-144)
        self.view.addSubview(scrollerView)
        for var i  = 0 ; i < 3 ; i++ {
            var view1 = UIView(frame: CGRectMake(CGFloat(Float(i)) * ks_screenWidth ,0, ks_screenWidth, ks_screenHight - 144))
            view1.backgroundColor = UIColor(red: CGFloat(CGFloat(random())/CGFloat(RAND_MAX)) , green: CGFloat(CGFloat(random())/CGFloat(RAND_MAX)), blue: CGFloat(CGFloat(random())/CGFloat(RAND_MAX)), alpha: 1)
            scrollerView.addSubview(view1);
            var button = UIButton(frame: CGRectMake(100, 100, 100, 50))
            button.setTitle("我是" + String(i + 3), forState: UIControlState.Normal)
            button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
            button.backgroundColor = UIColor.whiteColor()
            button.addTarget(self, action:"buttonClcik:", forControlEvents: UIControlEvents.TouchUpInside)
            button.tag = i + 3
            view1.addSubview(button)
        }
        
        var rightButton = UIBarButtonItem(title: "下一步", style: UIBarButtonItemStyle.Plain, target: self, action: "clickRightButton:")
        //rightButton.setTitle("下一步", forState: UIControlState.Normal)
        //rightButton.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        self.navigationItem.rightBarButtonItem = rightButton
        
        
    }

    func clickRightButton(sender:UIBarButtonItem) {
        NSLog("点击了下一步按钮")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonClcik(sender:UIButton) {
        NSLog("点击了" + String(sender.tag))
        switch (sender.tag) {
        case 3:
            var three = threeViewController()
            self.navigationController?.pushViewController(three, animated: false)
            break;
        case 4:
            break;
        case 5:
            break;
        default:
            break;
        }
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
