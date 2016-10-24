//
//  BNRItemStore.h
//  exampleTyphoon
//
//  Created by Estefania Guardado on 24/10/2016.
//  Copyright © 2016 Estefania Guardado. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@protocol BNRItemStore <NSObject>

@property (nonatomic, readonly, copy) NSArray *allItems;
+ (instancetype)sharedStore;
- (BNRItem *)createItem;
- (NSArray *)allItems;
    
@end
