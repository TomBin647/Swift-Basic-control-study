//
//  threeViewController.swift
//  UItableView
//
//  Created by 高彬 on 15/9/2.
//  Copyright (c) 2015年 erweimashengchengqi. All rights reserved.
//

import UIKit

class threeViewController: UIViewController,UITextFieldDelegate {

    var ks_screenWidth = UIScreen.mainScreen().bounds.size.width
    
    var ks_screenHight = UIScreen.mainScreen().bounds.size.height
    
    var label:UILabel!
    
    var timer:NSTimer!
    
    var textField:UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "我是第三页"
        
        var segment = UISegmentedControl(items: ["1","2","3"])
        segment.frame = CGRectMake(0, 64, ks_screenWidth , 30)
        segment.backgroundColor = UIColor.whiteColor()
        segment.selectedSegmentIndex = 1
        segment.setTitle("swift", forSegmentAtIndex: 2)
        segment.addTarget(self, action: "changValue:", forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(segment)
        
        textField = UITextField(frame: CGRectMake(0, 300, ks_screenWidth, 40))
        textField.delegate = self
        textField.placeholder = "我是一个textField"
        textField.returnKeyType = UIReturnKeyType.Next
        self.view.addSubview(textField)
        var image = UIImageView(frame: CGRectMake(0, 0,40, 40))
        image.image = UIImage(named: "wodehaizi@2x")
        textField.leftView = image
        textField.leftViewMode = UITextFieldViewMode.Always
        textField.borderStyle = UITextBorderStyle.RoundedRect
        textField.layer.borderColor =  UIColor.blueColor().CGColor
        textField.layer.borderWidth = 2
        // Do any additional setup after loading the view.
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
       return  textField.resignFirstResponder()
    }


    func changValue(sender:UISegmentedControl) {
        switch (sender.selectedSegmentIndex) {
        case 0:
            sender.insertSegmentWithTitle("插入一个图片类似哈哈", atIndex: 2, animated: true)
            break;
        case 1:
            NSLog("你点了第二个")
            //初始化一个 slide
            var slide = UISlider(frame: CGRectMake(20, 120, 200, 10));
            slide.minimumValue = 0
            slide.maximumValue = 100
            slide.minimumTrackTintColor = UIColor.redColor()
            slide.maximumTrackTintColor = UIColor.blackColor()
            slide.addTarget(self, action: "slideChange:", forControlEvents: UIControlEvents.ValueChanged)
            self.view.addSubview(slide)
            
            label = UILabel(frame: CGRectMake(100, 140, 200, 30))
            label.backgroundColor = UIColor.redColor()
            label.textColor = UIColor.blackColor()
            label.text = "0.0"
            label.textAlignment = NSTextAlignment.Center
            self.view.addSubview(label)
            break;
        case 2:
            var mySwitch = UISwitch(frame: CGRectMake(100, 200, 100, 30))
            mySwitch.setOn(true, animated: true)
            mySwitch.thumbTintColor = UIColor.redColor()
            mySwitch.tintColor = UIColor.blueColor()
            mySwitch.onTintColor = UIColor.yellowColor()
            mySwitch.addTarget(self, action: "changeSwitch:", forControlEvents: UIControlEvents.ValueChanged)
            self.view.addSubview(mySwitch)
            break;
        default:
            break;
        }
    }
    
    
    func slideChange(sender:UISlider) {
        label.text = String(stringInterpolationSegment:sender.value);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func changeSwitch(sender:UISwitch) {
        if sender.on==true
        {
            NSLog("打开")
            timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "timerFireMethod:", userInfo: nil, repeats:true);
            timer.fire()
        } else {
            NSLog("关闭")
        }
    }
    
    func timerFireMethod(timer: NSTimer) {
        var formatter = NSDateFormatter();
        formatter.dateFormat = "MM/dd/yyyy HH:mm:ss"
        var strNow = formatter.stringFromDate(NSDate())
        label.text  = "\(strNow)"
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