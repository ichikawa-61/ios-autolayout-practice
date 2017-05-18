//
//  MainViewController.m
//  ios-autolayout-4
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
    
    UIImageView *iv = [[UIImageView alloc]init];
    [iv setImage:[UIImage imageNamed:@"Image"]];
    iv.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:iv];
    
    NSLayoutConstraint *LeftConstraint = [NSLayoutConstraint
            constraintWithItem:iv
                     attribute:NSLayoutAttributeLeading
                     relatedBy:NSLayoutRelationEqual
                        toItem:self.view
                     attribute:NSLayoutAttributeLeading
                    multiplier:1
                      constant:0];
    
    NSLayoutConstraint *TopConstraint = [NSLayoutConstraint
            constraintWithItem:iv
                     attribute:NSLayoutAttributeTop
                     relatedBy:NSLayoutRelationEqual
                        toItem:self.view
                     attribute:NSLayoutAttributeTop
                    multiplier:1
                      constant:0];
    
    NSLayoutConstraint *BottomConstraint = [NSLayoutConstraint
            constraintWithItem:self.bottomLayoutGuide
                     attribute:NSLayoutAttributeBottom
                     relatedBy:NSLayoutRelationEqual
                        toItem:iv
                     attribute:NSLayoutAttributeBottom
                    multiplier:1
                      constant:0];
    
    NSLayoutConstraint *RightConstraint = [NSLayoutConstraint
            constraintWithItem:iv
                     attribute:NSLayoutAttributeTrailing
                     relatedBy:NSLayoutRelationEqual
                        toItem:self.view
                     attribute:NSLayoutAttributeTrailing
                    multiplier:1
                      constant:0];
    
    NSArray *constraints = @[LeftConstraint, TopConstraint, RightConstraint, BottomConstraint];
    //配列な内のconstraintsを発動させるためのメソッド
    [NSLayoutConstraint activateConstraints:constraints];
    [self setConstraints];
}

-(void)setConstraints{
    
    

}


@end
