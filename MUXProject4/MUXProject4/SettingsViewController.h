// Elijah Freestone
// MUX 1310
// Project 4
// October 18th, 2013

//
//  SettingsViewController.h
//  MUXProject4
//
//  Created by Elijah Freestone on 10/24/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingsViewController : UITableViewController

//Declare save button IBOutlet property to display alert view
@property (strong, nonatomic) IBOutlet UIBarButtonItem *saveSettings;

//Declare IBAction for save button to display alert view
- (IBAction)onSave:(id)sender;

@end
