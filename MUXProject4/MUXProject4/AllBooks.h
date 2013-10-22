// Elijah Freestone
// MUX 1310
// Project 4
// October 18th, 2013

//
//  AllBooks.h
//  MUXProject4
//
//  Created by Elijah Freestone on 10/21/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AllBooks : NSObject

//Declare strings for book info
@property (nonatomic, copy) NSString *bookTitle;
@property (nonatomic, copy) NSString *authorName;
@property (nonatomic, copy) NSString *currentPage;
@property (nonatomic, copy) NSString *publisher;
@property (nonatomic, copy) NSString *datePublished;
@property (nonatomic, copy) NSString *isbnNumber;
@property (nonatomic, copy) NSString *bookType;

@end
