

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *firstView = [[UIView alloc]init];
    firstView.backgroundColor = UIColor.orangeColor;
    firstView.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    UIView *secondView = [[UIView alloc]init];
    secondView.backgroundColor = UIColor.redColor;
    firstView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:firstView];
    [firstView addSubview:secondView];
    
    //firstView
    NSLayoutConstraint *firstViewTopConstraint = [
                                                  NSLayoutConstraint
                                                  constraintWithItem:firstView
                                                           attribute:NSLayoutAttributeTop
                                                           relatedBy:NSLayoutRelationEqual
                                                              toItem:self.view
                                                           attribute:NSLayoutAttributeTop
                                                          multiplier:1
                                                            constant:0];
    
    NSLayoutConstraint *firstViewLeftConstraint = [
                                                   NSLayoutConstraint
                                                   constraintWithItem:firstView
                                                            attribute:NSLayoutAttributeLeft
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeLeft
                                                           multiplier:1
                                                             constant:0];
    
    NSLayoutConstraint *firstViewRightConstraint = [NSLayoutConstraint
                                                   constraintWithItem:firstView
                                                            attribute:NSLayoutAttributeRight
                                                            relatedBy:NSLayoutRelationEqual
                                                               toItem:self.view
                                                            attribute:NSLayoutAttributeRight
                                                           multiplier:1
                                                             constant:0];
    
    NSLayoutConstraint *firstViewHeightConstraint = [NSLayoutConstraint
                                                     constraintWithItem:firstView
                                                              attribute:NSLayoutAttributeHeight
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:self.view
                                                              attribute:NSLayoutAttributeHeight
                                                             multiplier:0.5
                                                               constant:0];
    
    //secondView
    NSLayoutConstraint *secondViewHeightConstraint = [NSLayoutConstraint
                                                      constraintWithItem:secondView
                                                               attribute:NSLayoutAttributeHeight
                                                               relatedBy:NSLayoutRelationEqual
                                                                  toItem:nil
                                                               attribute:NSLayoutAttributeNotAnAttribute
                                                              multiplier:1
                                                                constant:100];
    
    NSLayoutConstraint *secondViewWidthConstraint = [
                                                     NSLayoutConstraint
                                                     constraintWithItem:secondView
                                                              attribute:NSLayoutAttributeWidth
                                                              relatedBy:NSLayoutRelationEqual
                                                                 toItem:nil
                                                              attribute:NSLayoutAttributeNotAnAttribute
                                                             multiplier:1
                                                               constant:150
                                                     ];
    
    NSLayoutConstraint *secondViewCenterX = [
                                             NSLayoutConstraint
                                             constraintWithItem:secondView
                                                    attribute:NSLayoutAttributeCenterX
                                                    relatedBy:NSLayoutRelationEqual
                                                       toItem:firstView
                                                    attribute:NSLayoutAttributeCenterX
                                                   multiplier:1
                                                     constant:0
                                             ];
    
    NSLayoutConstraint *secondViewCenterY = [
                                             NSLayoutConstraint
                                             constraintWithItem:secondView
                                                      attribute:NSLayoutAttributeCenterY
                                                      relatedBy:NSLayoutRelationEqual
                                                         toItem:firstView
                                                      attribute:NSLayoutAttributeCenterY
                                                     multiplier:1
                                                       constant:0
                                             ];
    
    NSArray *secondViewConstraints = @[
                             secondViewCenterX,
                             secondViewCenterY,
                             secondViewWidthConstraint,
                             secondViewHeightConstraint
                             ];
    
    
    NSArray *firstViewConstraints = @[
                             firstViewTopConstraint,
                             firstViewRightConstraint,
                             firstViewLeftConstraint,
                             firstViewHeightConstraint
                             ];
    
    [self.view addConstraints:firstViewConstraints];
    [self.view addConstraints:secondViewConstraints];
    
}



@end
