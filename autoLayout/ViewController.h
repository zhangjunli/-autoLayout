//
//  ViewController.h
//  autoLayout
//
//  Created by mac on 16/4/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISwitch *MySwitch;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *redMargin;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *greenMargin;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *space;





- (IBAction)mySwitchChanged:(UISwitch *)sender;


@end

