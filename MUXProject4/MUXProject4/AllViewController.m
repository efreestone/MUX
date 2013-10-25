// Elijah Freestone
// MUX 1310
// Project 4
// October 18th, 2013

//
//  AllViewController.m
//  MUXProject4
//
//  Created by Elijah Freestone on 10/21/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "AllViewController.h"
//Import all book
#import "AllBooks.h"
//Import book cell
#import "BookCell.h"

@interface AllViewController ()

@end

@implementation AllViewController

@synthesize allBooksArray;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //Override background and apply image
    self.parentViewController.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background"]];
    self.tableView.backgroundColor = [UIColor clearColor];
    
    //Create all books array and fill. Each new book entry is a new instance of AllBooks container class
    allBooksArray = [NSMutableArray arrayWithCapacity:20];
    //Book 1 and cast/alloc of AllBooks
    AllBooks *allBook = [[AllBooks alloc] init];
    allBook.coverImage = [UIImage imageNamed:@"cocoa-and-objective-c.png"];
    allBook.authorName = @"Scott Stevenson";
	allBook.bookTitle = @"Cocoa and Objective-C";
	allBook.currentPage = @"Not Active";
    [allBooksArray addObject:allBook];
    //Book 2
    allBook = [[AllBooks alloc] init];
    allBook.coverImage = [UIImage imageNamed:@"core-jini.png"];
	allBook.authorName = @"W. Keith Edwards";
	allBook.bookTitle = @"Core JINI";
	allBook.currentPage = @"Not Active";
	[allBooksArray addObject:allBook];
    //Book 3
    allBook = [[AllBooks alloc] init];
    allBook.coverImage = [UIImage imageNamed:@"designing-the-obvious.png"]; 
	allBook.authorName = @"Robert Hoekman, Jr.";
	allBook.bookTitle = @"Designing The Obvious";
	allBook.currentPage = @"Page 158 (Updated 8-6-13)";
	[allBooksArray addObject:allBook];
    //Book 4
    allBook = [[AllBooks alloc] init];
    allBook.coverImage = [UIImage imageNamed:@"iphone-hacks.png"];
    allBook.authorName = @"David Jurick";
	allBook.bookTitle = @"iPhone Hacks";
	allBook.currentPage = @"Not Active";
    [allBooksArray addObject:allBook];
    //Book 5
	allBook = [[AllBooks alloc] init];
    allBook.coverImage = [UIImage imageNamed:@"midnight.png"];
    allBook.authorName = @"Dean Koontz";
	allBook.bookTitle = @"Midnight";
	allBook.currentPage = @"Page 91 (Updated 7-18-13)";
	[allBooksArray addObject:allBook];
    //Book 6
    allBook = [[AllBooks alloc] init];
    allBook.coverImage = [UIImage imageNamed:@"not-just-java.png"];
    allBook.authorName = @"Peter Van Der Linden";
	allBook.bookTitle = @"Not Just Java (2nd Edition)";
	allBook.currentPage = @"Not Active";
	[allBooksArray addObject:allBook];
    //Book 7
    allBook = [[AllBooks alloc] init];
    allBook.coverImage = [UIImage imageNamed:@"objective-c-programming.png"];
    allBook.authorName = @"Aaron Hillegass";
	allBook.bookTitle = @"Objective-C Programming";
	allBook.currentPage = @"Page 190 (Updated 10-10-13)";
	[allBooksArray addObject:allBook];
    //Book 8
    allBook = [[AllBooks alloc] init];
    allBook.coverImage = [UIImage imageNamed:@"sworn-to-silence.png"];
    allBook.authorName = @"Linda Castilla";
	allBook.bookTitle = @"Sworn to Silence";
	allBook.currentPage = @"Page 34 (Updated 9-12-13)";
	[allBooksArray addObject:allBook];
    //Book 9
    allBook = [[AllBooks alloc] init];
    allBook.coverImage = [UIImage imageNamed:@"working-across-cultures.png"];
    allBook.authorName = @"John Hooker";
	allBook.bookTitle = @"Working Across Cultures";
	allBook.currentPage = @"Page 331 (Updated 4-1-13)";
	[allBooksArray addObject:allBook];
    
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    //Changed to add edit to left side instead of right (right will be + sign)
    self.navigationItem.leftBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.allBooksArray count];
    NSLog(@"count = %lu", (unsigned long)[self.allBooksArray count]);
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	BookCell *cell2 = (BookCell *) [tableView dequeueReusableCellWithIdentifier:@"AllCell"];
	AllBooks *allBook = [self.allBooksArray objectAtIndex:indexPath.row];
    cell2.bookCover.image = allBook.coverImage;
	cell2.authorLabel.text = allBook.authorName;
	cell2.titleLabel.text = allBook.bookTitle;
    cell2.currentLabel.text = allBook.currentPage;
    
    //Override to remove extra seperator lines after the last cell
    [self.tableView setTableFooterView:[[UIView alloc] initWithFrame:CGRectMake(0,0,0,0)]];
    
    return cell2;
}

//Built in function to check editing style (-=delete, +=add)
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    //Check if in delete mode
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        NSLog(@"We want to delete row = %d", indexPath.row);
        
        //Remove the deleted object from locationsArray
        [allBooksArray removeObjectAtIndex:indexPath.row];
        
        //Remove object from table view with animation. Receiving warning "local declaration of "tableView" hides instance variable". I may be missing something here but isn't this an Accessor method?
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:true];
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
