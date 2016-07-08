//
//  ViewController.m
//  autoLayout
//
//  Created by mac on 16/4/1.
//  Copyright © 2016年 mac. All rights reserved.
//


/**
 
 必需约束优先级是这个UILayoutPriorityRequired（1000），你不能在运行时改变一个必需约束的优先级。优先级比UILayoutPriorityRequired小的，就是一个可选或者非必需的约束，类似这种，只要你别把优先级设置为UILayoutPriorityRequired，你就可以改。
 
 */

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSString *modeUserDefaultKey = @"modeUserDefaultKey";

- (void)viewDidLoad {
    [super viewDidLoad];

    [self updateConstraintsForMode];
}

- (void)updateConstraintsForMode {
    if (self.MySwitch.isOn) {
        self.space.constant = 8.0;
        self.greenMargin.priority = UILayoutPriorityDefaultHigh+1;
    } else {
        self.space.constant = self.view.frame.size.width;
        self.greenMargin.priority = UILayoutPriorityDefaultHigh-1;
    }
}

- (IBAction)mySwitchChanged:(UISwitch *)sender
{
    [self.view layoutIfNeeded];
    [UIView animateWithDuration:3.0 animations:^{
        [self updateConstraintsForMode];
        [self.view layoutIfNeeded];
    }];
}

@end
