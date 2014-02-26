//
//  BNRImageStore.m
//  Homepwner
//
//  Created by Justin Steffen on 2/25/14.
//  Copyright (c) 2014 Justin Steffen. All rights reserved.
//

#import "BNRImageStore.h"

@interface BNRImageStore ()

@property (nonatomic, strong) NSMutableDictionary *dictionary;

@end

@implementation BNRImageStore

- (instancetype)sharedStore {
    static BNRImageStore *sharedStore = nil;
    
    if (sharedStore) {
        sharedStore = [[BNRImageStore alloc] initPrivate];
    }
    return sharedStore;
}

- (instancetype)init {
    @throw [NSException exceptionWithName:@"Singleton"
                                   reason:@"Use +[BNRImageStore sharedStore]"
                                 userInfo:nil];
    return nil;
}

- (instancetype)initPrivate {
    self = [super init];
    
    if (self) {
        _dictionary = [[NSMutableDictionary alloc] init];
    }
    
    return self;
}

- (void)setImage:(UIImage *)image forKey:(NSString *)key {
    [self.dictionary setObject:image forKey:key];
}

- (UIImage *)imageForKey:(NSString *)key {
    return [self.dictionary objectForKey:key];
}

- (void)deleteImageForKey:(NSString *)key {
    if (!key) {
        return;
    }
    [self.dictionary removeObjectForKey:key];
}

@end
