// Elijah Freestone
// MUX 1310
// Project 4
// October 18th, 2013

//
//  ActiveViewController.h
//  MUXProject4
//
//  Created by Elijah Freestone on 10/21/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import <UIKit/UIKit.h>
//Import add book
#import "AddBookViewController.h"

@interface ActiveViewController : UITableViewController //<AddBookViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *activeBooksArray;

@end
