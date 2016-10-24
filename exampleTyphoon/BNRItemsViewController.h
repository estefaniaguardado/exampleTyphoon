//
//  ViewController.h
//  exampleTyphoon
//
//  Created by Estefania Guardado on 24/10/2016.
//  Copyright © 2016 Estefania Guardado. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BNRItemStore;

@interface BNRItemsViewController : UITableViewController
    
    @property (nonatomic, strong) id <BNRItemStore> itemStore;

@end

