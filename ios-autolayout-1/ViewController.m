//
//  ViewController.m
//  ios-autolayout-1
//
//  Created by Manami Ichikawa on 5/18/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Buttonを生成
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 20)];
    [button setTitle:@"ボタン" forState:normal];
    button.backgroundColor = UIColor.blueColor;
    //Autolayout 無効果
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:button];
    
    NSLayoutConstraint *xConstraint = [NSLayoutConstraint constraintWithItem:button
                 attribute:NSLayoutAttributeCenterX
                 relatedBy:NSLayoutRelationEqual
                    toItem:self.view
                 attribute:NSLayoutAttributeCenterX
                multiplier:1
                  constant:0];
    
    NSLayoutConstraint *yConstraint = [NSLayoutConstraint constraintWithItem:button
                 attribute:NSLayoutAttributeCenterY
                 relatedBy:NSLayoutRelationEqual
                    toItem:self.view
                 attribute:NSLayoutAttributeCenterY
                multiplier:1
                  constant:0];
    
    //上記の制約を配列に格納
    NSArray *constraints = @[xConstraint, yConstraint];
    //配列な内のconstraintsを発動させるためのメソッド
    [NSLayoutConstraint activateConstraints:constraints];

}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
