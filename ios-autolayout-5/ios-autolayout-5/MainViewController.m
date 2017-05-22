//
//  MainViewController.m
//  ios-autolayout-5
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
    
    UIButton *button = [[UIButton alloc]init];
    [button setTitle:@"ボタン" forState:normal];
    button.backgroundColor = UIColor.blueColor;
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:button];
    
    // height
    NSLayoutConstraint *ButtonHeight = [NSLayoutConstraint
                               constraintWithItem:button
                                        attribute:NSLayoutAttributeHeight
                                        relatedBy:NSLayoutRelationEqual
                                           toItem:nil
                                        attribute:NSLayoutAttributeNotAnAttribute multiplier:1
                                           constant:100];
    // width
    NSLayoutConstraint *ButtonWidth = [NSLayoutConstraint
                                       constraintWithItem:button
                                       attribute: NSLayoutAttributeWidth
                                       relatedBy:NSLayoutRelationEqual
                                          toItem:nil
                                       attribute:NSLayoutAttributeNotAnAttribute multiplier:1
                                       constant:100];
    
    NSLayoutConstraint *LeftConstraint = [NSLayoutConstraint
                                          constraintWithItem:button
                                          attribute:NSLayoutAttributeLeading
                                          relatedBy:NSLayoutRelationEqual
                                          toItem:self.view
                                          attribute:NSLayoutAttributeLeading
                                          multiplier:1
                                          constant:20];
    
    NSLayoutConstraint *BottomConstraint = [NSLayoutConstraint
                                            constraintWithItem:self.bottomLayoutGuide
                                            attribute:NSLayoutAttributeBottom
                                            relatedBy:NSLayoutRelationEqual
                                            toItem:button
                                            attribute:NSLayoutAttributeBottom
                                            multiplier:1
                                            constant:20];
    
    
    
    // 制約の追加
    NSArray * constArray = @[ButtonHeight,ButtonWidth,LeftConstraint,BottomConstraint];
    
    [NSLayoutConstraint activateConstraints:constArray];
    
}




@end
