//
//  MainViewController.m
//  ios-autolayout-9
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
    
    UIView *sampleView = [[UIView alloc]init];
    sampleView.backgroundColor = UIColor.blueColor;
    sampleView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:sampleView];
    
    NSLayoutConstraint *topConstraint = [NSLayoutConstraint
                                         constraintWithItem:sampleView
                                                  attribute:NSLayoutAttributeTop
                                                  relatedBy:NSLayoutRelationEqual
                                                     toItem:self.view
                                                  attribute:NSLayoutAttributeTop
                                                 multiplier:1
                                                   constant:0];
    
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint
                                          constraintWithItem:sampleView
                                                   attribute:NSLayoutAttributeLeft
                                                   relatedBy:NSLayoutRelationEqual
                                                      toItem:self.view
                                                   attribute:NSLayoutAttributeLeft
                                                  multiplier:1
                                                    constant:0];
    
    NSLayoutConstraint *rightConstraint = [NSLayoutConstraint
                                           constraintWithItem:sampleView
                                                    attribute:NSLayoutAttributeRight
                                                    relatedBy:NSLayoutRelationEqual
                                                       toItem:self.view
                                                    attribute:NSLayoutAttributeRight
                                                   multiplier:1
                                                     constant:0];
    
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:sampleView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0.4 constant:0];
    
    NSArray *constraints = @[
                             topConstraint,
                             rightConstraint,
                             leftConstraint,
                             heightConstraint
                             ];
    
    [self.view addConstraints:constraints];
}


@end
