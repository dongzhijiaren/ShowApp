//
//  ViewController.m
//  ShowApp
//
//  Created by ZD on 15/5/26.
//  Copyright (c) 2015年 geek. All rights reserved.
//

#import "ViewController.h"
#import "Myview.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    Myview *view = [[Myview alloc]init];
    
    self.view = view;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
