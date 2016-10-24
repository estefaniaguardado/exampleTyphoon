//
//  BNRItem.h
//  exampleTyphoon
//
//  Created by Estefania Guardado on 24/10/2016.
//  Copyright © 2016 Estefania Guardado. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

    @property (nonatomic, strong) BNRItem *containedItem;
    @property (nonatomic, weak) BNRItem *container;
    @property (nonatomic, copy) NSString *itemName;
    @property (nonatomic, copy) NSString *serialNumber;
    @property (nonatomic) int valueInDollars;
    @property (nonatomic, readonly, strong) NSDate *dateCreated;
    
- (instancetype)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;
    
- (instancetype)initWithItemName:(NSString *)name;

+ (instancetype)randomItem;
    
@end
