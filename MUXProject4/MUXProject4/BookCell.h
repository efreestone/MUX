//
//  BookCell.h
//  MUXProject4
//
//  Created by Elijah Freestone on 10/21/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookCell : UITableViewCell

//Declare image view
@property (strong, nonatomic) IBOutlet UIImageView *bookCover;
//Declare author name label
@property (strong, nonatomic) IBOutlet UILabel *authorLabel;
//Declare book title label
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

@end
