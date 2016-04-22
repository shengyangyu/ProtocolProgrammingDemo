//
//  ViewController.m
//  ProtocolProgrammingDemo1
//
//  Created by shengyang_yu on 16/4/22.
//  Copyright © 2016年 yushengyang. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+ApiServiceProtocol.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)onGetAction:(UIButton *)sender {
     [self requestGetNetWithUrl:[NSURL URLWithString:@"www.shengyangbb.com"] Param:nil];
}
- (IBAction)onPostAction:(UIButton *)sender {
    [self requestPostNetWithUrl:[NSURL URLWithString:@"www.shengyangbb.com"] Param:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
