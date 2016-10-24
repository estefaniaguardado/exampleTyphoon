//
//  BNRItemStoreImpl.m
//  exampleTyphoon
//
//  Created by Estefania Guardado on 24/10/2016.
//  Copyright © 2016 Estefania Guardado. All rights reserved.
//

#import "BNRItemStoreImpl.h"
#import "BNRItem.h"

@interface BNRItemStoreImpl ()
    
    @property (nonatomic) NSMutableArray *privateItems;
    
@end

@implementation BNRItemStoreImpl
    
- (instancetype)init {
    [NSException raise:@"Singleton" format:@"Use + [BNRItemStore sharedStore]"];
    return nil;
}
    
- (instancetype)initPrivate {
    self = [super init];
    if (self) {
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}
    
    
#pragma mark - Protocol Methods
+ (instancetype)sharedStore {
    static BNRItemStoreImpl *sharedStore;
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
        for (int i = 0; i < 5; i++) {
            [sharedStore createItem];
        }
    }
    
    return sharedStore;
}
    
- (NSArray *)allItems {
    return [self.privateItems copy];
}
    
- (BNRItem *)createItem {
    BNRItem *item = [BNRItem randomItem];
    [self.privateItems addObject:item];
    return item;
}

@end
