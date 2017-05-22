//
//  MainViewController.m
//  ios-autolayout-6
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
    
    CGFloat inset = 0;
    
    UIButton *button2 = [[UIButton alloc]init];
    [button2 setTitle:@"ボタン2" forState:normal];
    button2.backgroundColor = UIColor.greenColor;
    button2.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:button2];
    
    UIButton *button3 = [[UIButton alloc]init];
    [button3 setTitle:@"ボタン3" forState:normal];
    button3.backgroundColor = UIColor.redColor;
    button3.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:button3];

    
  
 //buttonのConstrants
    NSLayoutConstraint *ButtonHeight =
    [NSLayoutConstraint constraintWithItem:button
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:50];
    
    NSLayoutConstraint *bottomConstraint =
    [NSLayoutConstraint constraintWithItem:button
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeBottom
                                multiplier:1.0
                                  constant:inset];
    
    NSLayoutConstraint *leftConstraint =
    [NSLayoutConstraint constraintWithItem:button
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1.0
                                  constant:inset];
    
    NSLayoutConstraint *rightConstraint =
    [NSLayoutConstraint constraintWithItem:button
                                 attribute:NSLayoutAttributeRight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeRight
                                multiplier:1.0
                                  constant:inset];
    
    //button2のConstrants
    NSLayoutConstraint *button2Height =
    [NSLayoutConstraint constraintWithItem:button2
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:50];
    
    NSLayoutConstraint *button2BottomConstraint =
    [NSLayoutConstraint constraintWithItem:button2
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:button
                                 attribute:NSLayoutAttributeTop
                                multiplier:1.0
                                  constant:inset];
    
    NSLayoutConstraint *button2LeftConstraint =
    [NSLayoutConstraint constraintWithItem:button2
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1.0
                                  constant:inset];
    
    NSLayoutConstraint *button2RightConstraint =
    [NSLayoutConstraint constraintWithItem:button2
                                 attribute:NSLayoutAttributeRight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeRight
                                multiplier:1.0
                                  constant:inset];
    
    //button3のConstraints
    NSLayoutConstraint *button3Height =
    [NSLayoutConstraint constraintWithItem:button3
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:nil attribute:NSLayoutAttributeNotAnAttribute
                                multiplier:1
                                  constant:50];
    
    
    NSLayoutConstraint *button3BottomConstraint =
    [NSLayoutConstraint constraintWithItem:button3
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:button2
                                 attribute:NSLayoutAttributeTop
                                multiplier:1.0
                                  constant:inset];
    
    NSLayoutConstraint *button3LeftConstraint =
    [NSLayoutConstraint constraintWithItem:button3
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1.0
                                  constant:inset];
    
    NSLayoutConstraint *button3RightConstraint =
    [NSLayoutConstraint constraintWithItem:button3
                                 attribute:NSLayoutAttributeRight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeRight
                                multiplier:1.0
                                  constant:inset];
    
    NSArray *constraints = @[
                             ButtonHeight,
                             bottomConstraint,
                             leftConstraint,
                             rightConstraint
                             ];
    
    NSArray *constraints2 = @[
                             button2Height,
                             button2BottomConstraint,
                             button2LeftConstraint,
                             button2RightConstraint
                             ];
    
    NSArray *constraints3 = @[
                              button3Height,
                              button3BottomConstraint,
                              button3LeftConstraint,
                              button3RightConstraint
                              ];

    [self.view addConstraints:constraints];
    [self.view addConstraints:constraints2];
    [self.view addConstraints:constraints3];
   
}



@end
