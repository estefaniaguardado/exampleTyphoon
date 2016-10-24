//
//  BNRApplicationAssembly.m
//  exampleTyphoon
//
//  Created by Estefania Guardado on 24/10/2016.
//  Copyright © 2016 Estefania Guardado. All rights reserved.
//

#import "BNRApplicationAssembly.h"
#import "BNRItemStoreImpl.h"
#import "BNRItemsViewController.h"

@implementation BNRApplicationAssembly
    
- (BNRItemsViewController *)itemsViewController {
    return [TyphoonDefinition withClass:[BNRItemsViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(itemStore) with:[self store]];
    }];
}
    
- (id<BNRItemStore>)store {
    return [TyphoonDefinition withClass:[BNRItemStoreImpl class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(sharedStore) parameters:^(TyphoonMethod *initializer) {
            definition.scope = TyphoonScopeLazySingleton;
        }];
    }];
}
    
@end
