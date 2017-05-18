//
//  MainViewController.m
//  ios-autolayout-2
//
//  Created by Manami Ichikawa on 5/18/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 20)];
    [button setTitle:@"ボタン" forState:normal];
    button.backgroundColor = UIColor.blueColor;
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:button];
    
    NSLayoutConstraint *xConstraint = [NSLayoutConstraint constraintWithItem:button
                 attribute:NSLayoutAttributeCenterX
                 relatedBy:NSLayoutRelationEqual
                    toItem:self.view
                 attribute:NSLayoutAttributeCenterX
                multiplier:1
                  constant:0];
   
    //中央から100px上に配置する
    NSLayoutConstraint *yConstraint = [NSLayoutConstraint constraintWithItem:button
                 attribute:NSLayoutAttributeCenterY
                 relatedBy:NSLayoutRelationEqual
                    toItem:self.view
                 attribute:NSLayoutAttributeCenterY
                multiplier:1
                  constant:-100];
    NSArray *constraints = @[xConstraint,yConstraint];
    [NSLayoutConstraint activateConstraints:constraints];

}

@end
