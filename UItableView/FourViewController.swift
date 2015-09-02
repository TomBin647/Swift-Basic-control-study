//
//  FourViewController.swift
//  UItableView
//
//  Created by 高彬 on 15/9/2.
//  Copyright (c) 2015年 erweimashengchengqi. All rights reserved.
//

import UIKit

class FourViewController: UIViewController,UIActionSheetDelegate,UIPickerViewDataSource,UIPickerViewDelegate {

    var ks_screenWidth = UIScreen.mainScreen().bounds.size.width
    
    var ks_screenHight = UIScreen.mainScreen().bounds.size.height
    
    var pickView:UIPickerView!
    
    var MynewView:UIView!
    
    var choosePickLabel:UILabel!
    
    var strLabel:String!
    
    var DatePicker:UIDatePicker!
    
    let dateSource = ["你好","nihao","我好","wohao","大家好","dajiahao","真的好","zhendehao"] as NSArray
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "这是第四页"
        // Do any additional setup after loading the view.
        var button = UIButton(frame: CGRectMake(50, 100, 150, 40))
        button.setTitle("UIActionSheet", forState: UIControlState.Normal)
        button.backgroundColor = UIColor.blueColor()
        button.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        button.addTarget(self, action: "ChangeToActionSheet:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
        choosePickLabel = UILabel (frame: CGRectMake(0, ks_screenHight-100, ks_screenWidth, 30))
        choosePickLabel.backgroundColor = UIColor.purpleColor()
        choosePickLabel.textColor = UIColor.blackColor()
        choosePickLabel.textAlignment = NSTextAlignment.Center
        self.view.addSubview(choosePickLabel)
    }

    func ChangeToActionSheet(sender:UIButton) {
        if (MynewView != nil) {
            MynewView.removeFromSuperview()
        }
        var actionSheet = UIActionSheet(title: "这是一个底边弹出框", delegate: self, cancelButtonTitle: "取消", destructiveButtonTitle: "确定", otherButtonTitles:"弹出一个PickView","弹出一个时间选取器")
        actionSheet.showInView(self.view)
    }
    
    func actionSheet(actionSheet: UIActionSheet, clickedButtonAtIndex buttonIndex: Int) {
        switch (buttonIndex) {
        case 0:
            NSLog("确定")
            self.navigationController?.popViewControllerAnimated(false)
            break;
        case 1:
            NSLog("取消")
            break;
        case 2:
            
            NSLog("弹出一个PickView")
            
            MynewView = UIView(frame: CGRectMake(0, 160, ks_screenWidth, 240))
            //            MynewView.backgroundColor = UIColor.whiteColor()
            self.view .addSubview(MynewView)
            
            pickView = UIPickerView(frame: CGRectMake(0, 0, ks_screenWidth,200))
            pickView.delegate = self
            pickView.dataSource = self
            MynewView.addSubview(pickView)
            
            
            
            var cancelButton = UIButton(frame: CGRectMake(0, 200, ks_screenWidth/2, 40))
            cancelButton.setTitle("取消", forState: UIControlState.Normal)
            cancelButton.backgroundColor = UIColor.redColor()
            cancelButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
            cancelButton.addTarget(self, action: "cancelButtonClick:", forControlEvents: UIControlEvents.TouchUpInside)
            MynewView.addSubview(cancelButton)
            
            var submitButton = UIButton(frame: CGRectMake(ks_screenWidth/2, 200, ks_screenWidth/2, 40))
            submitButton.setTitle("确定", forState: UIControlState.Normal)
            submitButton.backgroundColor = UIColor.redColor()
            submitButton.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
            submitButton.addTarget(self, action: "submitButtonClick:", forControlEvents: UIControlEvents.TouchUpInside)
            MynewView.addSubview(submitButton)
            break;
        case 3:
            NSLog("弹出一个时间选取器")
            
            break;
        default:
            break;
        }
    }
    func submitButtonClick(sender:UIButton) {
        if (choosePickLabel.text != nil) {
            choosePickLabel.text = strLabel
        } else {
            choosePickLabel.text = "你好"
        }
        
        MynewView.removeFromSuperview()
    }
    
    func cancelButtonClick(sender:UIButton) {
        MynewView.removeFromSuperview()
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dateSource.count
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView!) -> UIView {
        var label = UILabel(frame: CGRectMake(0, 0, ks_screenWidth, 20))
        label.textAlignment = NSTextAlignment.Center
        label.textColor = UIColor.blackColor()
        label.text = dateSource.objectAtIndex(row) as? String
        return label
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        choosePickLabel.text = dateSource.objectAtIndex(row) as? String
        strLabel = dateSource.objectAtIndex(row) as? String
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
