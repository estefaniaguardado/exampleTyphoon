//
//  ViewController.m
//  exampleTyphoon
//
//  Created by Estefania Guardado on 24/10/2016.
//  Copyright © 2016 Estefania Guardado. All rights reserved.
//

#import "BNRItemsViewController.h"
#import "BNRItemStoreImpl.h"
#import "BNRItem.h"

@interface BNRItemsViewController ()

@end

@implementation BNRItemsViewController
  
- (instancetype)initWithStyle:(UITableViewStyle)style {
    return [self init];
}
    
- (id)init
    {
        self = [super init];
        if (self) {
        }
        return self;
    }
    
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self.itemStore allItems] count];
}
    
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    
    NSArray *items = [self.itemStore allItems];
    BNRItem *item = items[indexPath.row];
    
    cell.textLabel.text = [item description];
    
    return cell;
}

@end
