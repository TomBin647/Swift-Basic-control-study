//
//  RequestAPI.swift
//  UItableView
//
//  Created by 高彬 on 15/9/6.
//  Copyright (c) 2015年 erweimashengchengqi. All rights reserved.
//

import UIKit

typealias Succeed = (NSURLSessionDataTask!,AnyObject!) ->Void
//类似名字的替换
typealias Failure = (NSURLSessionDataTask!,AnyObject!) ->Void

class RequestAPI: NSObject {
    
    //普通post网络请求
    class func POST(url:String!,body:AnyObject?,succeed:Succeed,failed:Failure) {
        
        
        var mysucceed:Succeed = succeed
        var myfailure:Failure = failed
        
        requestClient.sharedInstance.POST(url, parameters: body, success: { (task:NSURLSessionDataTask!, responseObject:AnyObject?) ->Void in
            mysucceed(task,responseObject)
            }){ (task:NSURLSessionDataTask!, error:NSError!) ->Void in
                myfailure(task,error)
        }
        
    }
    //普通get网络请求
    class func GET(url:String!,body:AnyObject?,succeed:Succeed,failed:Failure) {
        
        var mysucceed:Succeed = succeed
        var myfailure:Failure = failed
        
        requestClient.sharedInstance.GET(url, parameters: nil, success: { (task:NSURLSessionDataTask!, responseObject:AnyObject?) ->Void in
            
            mysucceed(task,responseObject)
            
            }) { (task:NSURLSessionDataTask!, error:NSError!) ->Void in
                myfailure(task,error)
        }
        
    }
//    //上传图片
//    
//    class func  uploadImage(url:String,body:Dictionary<String,String>?,imagePath:String,succeed:Succeed,failed:Failure) {
//        //根据图片链接获取图片名称
//        
//        var iamgeName:String! = RequestAPI.uploadName(imagePath)
//        RequestAPI.requestUrl(url, body: body, imagePath: imagePath, filePath: nil, name:iamgeName , succeed: succeed, failed: failed)
//    }
//    
//    
//    
//    //上传文件
//    
//    class func  uploadFile(url:String,body:Dictionary<String,String>?,filePath:String,succeed:Succeed,failed:Failure) {
//        //根据文件链接获取文件名称
//        
//        var fileName:String! = RequestAPI.uploadName(filePath)
//        RequestAPI.requestUrl(url, body: body, imagePath: nil, filePath:filePath, name:fileName , succeed: succeed, failed: failed)
//    }
//    //获取图片/文件名
//    class func uploadName(path:String?)->String {
//        var uploadFilePath:String = String(stringInterpolationSegment: path).stringByDeletingPathExtension
//        let spliteArray = split(uploadFilePath){
//            $0=="."
//        }
//        var fileName:String! = spliteArray.last!
//        return fileName
//    }
//    
//    //上传操作
//    class func requestUrl(url:String,body:Dictionary<String,String>?,imagePath:String?,filePath:String?,name:String,succeed:Succeed,failed:Failure) {
//        
//        
//        var uploadImagePath:String! = String(stringInterpolationSegment: imagePath)
//        var uploadFilePath:String! = String(stringInterpolationSegment: filePath)
//        var parameters:Dictionary! = body
//        
//        var mysucceed:Succeed = succeed
//        var myfailure:Failure = failed
//        
//        
//        if uploadImagePath != nil{
//            
//            var image:UIImage! = UIImage(contentsOfFile:uploadImagePath)
//            
//            if image != NSNull() {
//                
//                var imageData:NSData! = UIImageJPEGRepresentation(image, 1.0)
//                
//                requestClient.sharedInstance.POST(url, parameters: body, constructingBodyWithBlock: { (formData:AFMultipartFormData!) in
//                    if imageData != nil{
//                        formData.appendPartWithFileData(imageData, name: "upload", fileName: "upload", mimeType: "image/jpeg")
//                    }
//                    
//                    }, success: { (task:NSURLSessionDataTask!, responseObject:AnyObject!)in
//                        
//                        mysucceed(task,responseObject)
//                        
//                    }, failure: { (task:NSURLSessionDataTask!, error:NSError!)in
//                        
//                        myfailure(task,error)
//                })
//            }
//        }else if uploadFilePath != nil{
//            var url:NSURL! = NSURL(string: "http://example.com/upload")
//            var request:NSURLRequest! = NSURLRequest(URL: url)
//            var fileUrl:NSURL! = NSURL(fileURLWithPath: uploadFilePath)
//            
//            var uploadTask:NSURLSessionUploadTask = requestClient.sharedInstance.uploadTaskWithRequest(request, fromFile: fileUrl, progress: AutoreleasingUnsafeMutablePointer<NSProgress?>(), completionHandler: { (response, responseObject, error) in
//                
//                
//            })
//            uploadTask.resume()
//            
//        }
//        
//    }
    
}
