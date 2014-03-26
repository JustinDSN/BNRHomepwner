//
//  BNRImageStore.h
//  Homepwner
//
//  Created by Justin Steffen on 2/25/14.
//  Copyright (c) 2014 Justin Steffen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRImageStore : NSObject

+ (instancetype) sharedStore;

- (void)setImage:(UIImage *)image forKey:(NSString *)key;
- (UIImage *)imageForKey:(NSString *)key;
- (void)deleteImageForKey:(NSString *)key;
- (NSString *)imagePathForKey:(NSString *)key;

@end
