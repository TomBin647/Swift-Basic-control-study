//
//  hyBridViewController.m
//  UItableView
//
//  Created by 高彬 on 15/9/6.
//  Copyright (c) 2015年 erweimashengchengqi. All rights reserved.
//

#import "hyBridViewController.h"
#import "UItableView-swift.h"


@interface hyBridViewController ()
{
    act * act1;
}
@end

@implementation hyBridViewController

- (id)init
{
    if (self = [super init]) {
        NSLog(@"OC Constructor is called.");
        //使用Swift类
        act1 = [[act alloc]init];
        
        
        
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"OC Destroyed is called.");
    //[act release];//ARC not use
    // [super dealloc];//ARC not use
}

- (NSString *)ChannelChange:(NSInteger) channels
{
    return [act1 hasAct:channels];
    //return @"1";
}

@end







//@end
//
//
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
