//
//  MainViewController.m
//  ios-autolayout-7
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
    
    UIButton *blueButton = [[UIButton alloc]init];
    [blueButton setTitle:@"ボタン" forState:normal];
    blueButton.backgroundColor = UIColor.blueColor;
    blueButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:blueButton];
    
    UIButton *greenButton = [[UIButton alloc]init];
    [greenButton setTitle:@"ボタン" forState:normal];
    greenButton.backgroundColor = UIColor.greenColor;
    greenButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:greenButton];
    
    UIButton *redButton = [[UIButton alloc]init];
    [redButton setTitle:@"ボタン" forState:normal];
    redButton.backgroundColor = UIColor.redColor;
    redButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:redButton];
    
    NSLayoutConstraint *blueBtAspectRatio =
    [NSLayoutConstraint constraintWithItem:blueButton
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:blueButton
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0/20.0
                                  constant:50];
    
    NSLayoutConstraint *bottomConstraint =
    [NSLayoutConstraint constraintWithItem:blueButton
                                 attribute:NSLayoutAttributeBottom
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeBottom
                                multiplier:1.0
                                  constant:0];
    
    NSLayoutConstraint *leftConstraint =
    [NSLayoutConstraint constraintWithItem:blueButton
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1.0
                                  constant:0];
    
    NSLayoutConstraint *rightConstraint =
    [NSLayoutConstraint constraintWithItem:blueButton
                                 attribute:NSLayoutAttributeRight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeRight
                                multiplier:1.0
                                  constant:0];
    
    //greenButtonのConstrants
    NSLayoutConstraint *greenBtAspectRatio =
    [NSLayoutConstraint constraintWithItem:greenButton
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:greenButton
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0/20.0
                                  constant:50];
    
    NSLayoutConstraint *greenBtBottomConstraint =
    [NSLayoutConstraint constraintWithItem:blueButton
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:greenButton
                                 attribute:NSLayoutAttributeBottom
                                multiplier:1.0
                                  constant:0];
    
    NSLayoutConstraint *greenBtLeftConstraint =
    [NSLayoutConstraint constraintWithItem:greenButton
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1.0
                                  constant:0];
    
    NSLayoutConstraint *greenBtRightConstraint =
    [NSLayoutConstraint constraintWithItem:greenButton
                                 attribute:NSLayoutAttributeRight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeRight
                                multiplier:1.0
                                  constant:0];
    
    //redButtonのConstrants
    NSLayoutConstraint *redBtAspectRatio =
    [NSLayoutConstraint constraintWithItem:redButton
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:redButton
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0/20.0
                                  constant:50];
    
    NSLayoutConstraint *redBtBottomConstraint =
    [NSLayoutConstraint constraintWithItem:greenButton
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:redButton
                                 attribute:NSLayoutAttributeBottom
                                multiplier:1.0
                                  constant:0];
    
    NSLayoutConstraint *redBtLeftConstraint =
    [NSLayoutConstraint constraintWithItem:redButton
                                 attribute:NSLayoutAttributeLeft
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeLeft
                                multiplier:1.0
                                  constant:0];
    
    NSLayoutConstraint *redBtRightConstraint =
    [NSLayoutConstraint constraintWithItem:redButton
                                 attribute:NSLayoutAttributeRight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeRight
                                multiplier:1.0
                                  constant:0];
    
    
    NSArray *blueBtConstraints = @[
                             blueBtAspectRatio,
                             bottomConstraint,
                             leftConstraint,
                             rightConstraint
                             ];
    
    NSArray *greenBtConstraints = @[
                                   greenBtAspectRatio,
                                   greenBtBottomConstraint,
                                   greenBtLeftConstraint,
                                   greenBtRightConstraint
                                   ];
    
    NSArray *redBtConstraints = @[
                                    redBtAspectRatio,
                                    redBtBottomConstraint,
                                    redBtLeftConstraint,
                                    redBtRightConstraint
                                    ];

    [self.view addConstraints:blueBtConstraints];
    [self.view addConstraints:greenBtConstraints];
    [self.view addConstraints:redBtConstraints];
    
}

@end
