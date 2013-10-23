// Elijah Freestone
// MUX 1310
// Project 4
// October 18th, 2013

//
//  ActiveViewController.m
//  MUXProject4
//
//  Created by Elijah Freestone on 10/21/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "ActiveViewController.h"
//Import active book
#import "ActiveBooks.h"
//Import book cell
#import "BookCell.h"

@interface ActiveViewController ()

@end

@implementation ActiveViewController

@synthesize activeBooksArray;

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
    
    //Override inset to provide space between nav bar and first cell
    UIEdgeInsets inset = UIEdgeInsetsMake(15, 0, 0, 0);
    self.tableView.contentInset = inset;
    
    //Create active books array and fill. Each new book entry is a new instance of ActiveBooks container class
    activeBooksArray = [NSMutableArray arrayWithCapacity:20];
    //Book 1 and cast/alloc of ActiveBooks
	ActiveBooks *activeBook = [[ActiveBooks alloc] init];
    activeBook.coverImage = [UIImage imageNamed:@"designing-the-obvious.png"];
	activeBook.authorName = @"Robert Hoekman, Jr.";
	activeBook.bookTitle = @"Designing The Obvious";
	activeBook.currentPage = @"Page 158 (Updated 8-6-13)";
	[activeBooksArray addObject:activeBook];
    //Book 2
	activeBook = [[ActiveBooks alloc] init];
    activeBook.coverImage = [UIImage imageNamed:@"midnight.png"];
    activeBook.authorName = @"Dean Koontz";
	activeBook.bookTitle = @"Midnight";
	activeBook.currentPage = @"Page 91 (Updated 7-18-13)";
	[activeBooksArray addObject:activeBook];
    //Book 3
    activeBook = [[ActiveBooks alloc] init];
    activeBook.coverImage = [UIImage imageNamed:@"objective-c-programming.png"];
    activeBook.authorName = @"Aaron Hillegass";
	activeBook.bookTitle = @"Objective-C Programming";
	activeBook.currentPage = @"Page 190 (Updated 10-10-13)";
	[activeBooksArray addObject:activeBook];
    //Book 4
    activeBook = [[ActiveBooks alloc] init];
    activeBook.coverImage = [UIImage imageNamed:@"sworn-to-silence.png"];
    activeBook.authorName = @"Linda Castilla";
	activeBook.bookTitle = @"Sworn to Silence";
	activeBook.currentPage = @"Page 34 (Updated 9-12-13)";
	[activeBooksArray addObject:activeBook];
    //Book 5
    activeBook = [[ActiveBooks alloc] init];
    activeBook.coverImage = [UIImage imageNamed:@"working-across-cultures.png"];
    activeBook.authorName = @"John Hooker";
	activeBook.bookTitle = @"Working Across Cultures";
	activeBook.currentPage = @"Page 331 (Updated 4-1-13)";
	[activeBooksArray addObject:activeBook];
    
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

//Override to remove extra seperator lines after last cell. Works but removes the line below the last cell which I want to keep. Alternative is in cellForRowAtIndexPath
/*- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    // This will create a "invisible" footer
    return 0.01f;
}*/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.activeBooksArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	BookCell *cell = (BookCell *) [tableView dequeueReusableCellWithIdentifier:@"ActiveCell"];
	ActiveBooks *activeBook = [self.activeBooksArray objectAtIndex:indexPath.row];
    cell.bookCover.image = activeBook.coverImage;
	cell.authorLabel.text = activeBook.authorName;
	cell.titleLabel.text = activeBook.bookTitle;
    cell.currentLabel.text = activeBook.currentPage;
    
    //Override to remove extra seperator lines after the last cell
    [self.tableView setTableFooterView:[[UIView alloc] initWithFrame:CGRectMake(0,0,0,0)]];
    
    return cell;
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

//Function to notify of delegate
/*- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	if ([segue.identifier isEqualToString:@"AddBook"]) {
		UINavigationController *navigationController =
        segue.destinationViewController;
		AddBookViewController *addBookViewController = [[navigationController viewControllers] objectAtIndex:0];
		addBookViewController.delegate = self;
	}
}*/


#pragma mark - AddBookViewControllerDelegate

- (void)addBookViewControllerDidCancel:(AddBookViewController *)controller {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)addBookViewControllerDidSave:(AddBookViewController *)controller {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
