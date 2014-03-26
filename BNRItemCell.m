//
//  BNRItemCell.m
//  Homepwner
//
//  Created by Justin Steffen on 3/26/14.
//  Copyright (c) 2014 Justin Steffen. All rights reserved.
//

#import "BNRItemCell.h"

@implementation BNRItemCell

- (IBAction)showImage:(id)sender {
    if (self.actionBlock) {
        self.actionBlock();
    }
}

@end
