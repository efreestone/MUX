// Elijah Freestone
// MUX 1310
// Project 4
// October 18th, 2013

//
//  AddBookViewController.h
//  MUXProject4
//
//  Created by Elijah Freestone on 10/22/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import <UIKit/UIKit.h>

/*@class AddBookViewController;
//Set up delegate protocol
@protocol AddBookViewControllerDelegate <NSObject>
//Triggered when cancel button is hit
- (void)addBookViewControllerDidCancel:(AddBookViewController *)controller;
//Triggered when save button is hit
- (void)addBookViewControllerDidSave:(AddBookViewController *)controller;

@end*/

@interface AddBookViewController : UITableViewController

//@property (nonatomic, weak) NSObject <AddBookViewControllerDelegate> *delegate;
//Declare ibactions for save and cancel buttons
- (IBAction)onCancel:(id)sender;
- (IBAction)onSave:(id)sender;


@end
