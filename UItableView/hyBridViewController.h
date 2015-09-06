//
//  hyBridViewController.h
//  UItableView
//
//  Created by 高彬 on 15/9/6.
//  Copyright (c) 2015年 erweimashengchengqi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface hyBridViewController : UIViewController

@property (nonatomic,retain) NSString *ChannelName;

- (NSString *)ChannelChange:(NSInteger) channels;

@end

