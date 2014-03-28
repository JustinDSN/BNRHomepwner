//
//  BNRDetailViewController.h
//  Homepwner
//
//  Created by Justin Steffen on 2/25/14.
//  Copyright (c) 2014 Justin Steffen. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BNRItem;

@interface BNRDetailViewController : UIViewController <UIViewControllerRestoration>

- (instancetype)initForNewItem:(BOOL)isNew;

@property (nonatomic, strong) BNRItem *item;
@property (nonatomic, copy) void (^dismissBlock)(void);

@end
