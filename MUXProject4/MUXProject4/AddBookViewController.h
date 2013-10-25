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

//Creat IBOutlet properties for book info fields and switches
@property (strong, nonatomic) IBOutlet UITextField *titleTextField;
@property (strong, nonatomic) IBOutlet UITextField *authorTextField;
@property (strong, nonatomic) IBOutlet UISwitch *activeSwitch;
@property (strong, nonatomic) IBOutlet UILabel *placeLabel;
@property (strong, nonatomic) IBOutlet UITextField *placeTextField;
@property (strong, nonatomic) IBOutlet UITextField *publisherTextField;
@property (strong, nonatomic) IBOutlet UITextField *dateTextField;
@property (strong, nonatomic) IBOutlet UITextField *isbnTextField;
@property (strong, nonatomic) IBOutlet UISwitch *eBookSwitch;

//@property (nonatomic, weak) NSObject <AddBookViewControllerDelegate> *delegate;
//Declare ibactions for save and cancel buttons
- (IBAction)onCancel:(id)sender;
- (IBAction)onSave:(id)sender;
//Declare IBAction for active switch to enable place text field
- (IBAction)onActive:(id)sender;


@end
