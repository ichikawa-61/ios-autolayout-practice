//
//  MainViewController.m
//  ios-autolayout-8
//
//  Created by Manami Ichikawa on 5/22/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *centerView = [[UIView alloc]init];
    centerView.backgroundColor = UIColor.blueColor;
    centerView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:centerView];
    
    NSLayoutConstraint *xConstraint = [NSLayoutConstraint constraintWithItem:centerView
                                                                   attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    
    NSLayoutConstraint *yConstraint = [NSLayoutConstraint constraintWithItem:centerView
                                                                   attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view
                                                                   attribute:NSLayoutAttributeCenterY
                                                                  multiplier:1 constant:0];
    
    //widthはsuper viewに対して0.6倍
    NSLayoutConstraint *viewWidth = [NSLayoutConstraint constraintWithItem:centerView
                                                                 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.view
                                                                 attribute:NSLayoutAttributeWidth
                                                                multiplier:0.6
                                                                  constant:0];
    //heightはwidthの2分の1
    NSLayoutConstraint *viewHeight = [NSLayoutConstraint constraintWithItem:centerView
                                                                  attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:centerView attribute:NSLayoutAttributeWidth multiplier:1.0/2.0
                                                                    constant:0];
    
        NSArray *constraints = @[xConstraint,yConstraint,viewHeight,viewWidth];
    [NSLayoutConstraint activateConstraints:constraints];
    
}



@end
