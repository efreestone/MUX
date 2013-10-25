// Elijah Freestone
// MUX 1310
// Project 4
// October 18th, 2013

//
//  DetailViewController.h
//  MUXProject4
//
//  Created by Elijah Freestone on 10/24/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UITableViewController

//Declare image, labels, and open button
@property (strong, nonatomic) IBOutlet UIImageView *coverImage;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *authorLabel;
@property (strong, nonatomic) IBOutlet UILabel *placeLabel;
@property (strong, nonatomic) IBOutlet UILabel *publisherLabel;
@property (strong, nonatomic) IBOutlet UILabel *dateLabel;
@property (strong, nonatomic) IBOutlet UILabel *isbnLabel;
@property (strong, nonatomic) IBOutlet UILabel *bookTypeLabel;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *openInButton;

//Declare IBAction for open in e-reader button. Will display an alert view
-(IBAction)onOpenIn:(id)sender;

@end
