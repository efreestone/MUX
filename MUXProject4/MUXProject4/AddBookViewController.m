// Elijah Freestone
// MUX 1310
// Project 4
// October 18th, 2013

//
//  AddBookViewController.m
//  MUXProject4
//
//  Created by Elijah Freestone on 10/22/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "AddBookViewController.h"
//Import active books view controller
#import "ActiveViewController.h"

@interface AddBookViewController ()

@end

@implementation AddBookViewController

//Synthesize for getters/setters
@synthesize titleTextField, authorTextField, activeSwitch, placeLabel, placeTextField, publisherTextField, dateTextField, isbnTextField, eBookSwitch;

//Synthesize for getter/setter
//@synthesize delegate;

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
    self.parentViewController.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background-reverse"]];
    self.tableView.backgroundColor = [UIColor clearColor];
    
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

/*- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}*/

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

//Triggered when cancel button is hit
- (IBAction)onCancel:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
	//[self.delegate addBooksViewControllerDidCancel:self];
}
//Triggered when save button is hit
- (IBAction)onSave:(id)sender{
    //Create and display alert when save button is hit
    UIAlertView *savedAlert = [[UIAlertView alloc] initWithTitle: @"Book Would Have Saved!!" message: @"Your book would have been saved, but this bit of code hasn't been written yet." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [savedAlert show];
    
    [self dismissViewControllerAnimated:YES completion:nil];
	//[self.delegate addBooksViewControllerDidSave:self];
}
//onSwipe function to grab swipe and trigger save
-(IBAction)onSwipe:(UISwipeGestureRecognizer *)swipeRecognizer {
    if (swipeRecognizer.direction == UISwipeGestureRecognizerDirectionRight) {
        UIAlertView *savedAlert = [[UIAlertView alloc] initWithTitle: @"Book Would Have Saved!!" message: @"Your book would have been saved, but this bit of code hasn't been written yet." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [savedAlert show];
        
        [self dismissViewControllerAnimated:YES completion:nil];
        
    }
}
//Triggered when activeSwitch value changes
- (IBAction)onActive:(id)sender {
    if (activeSwitch.isOn) {
        //Enable place text field
        placeTextField.enabled = YES;
        //Change color of text field to white
        placeTextField.backgroundColor = [UIColor whiteColor];
        //Change color of place label to black
        placeLabel.textColor = [UIColor blackColor];
    } else {
        //Disable place text field
        placeTextField.enabled = NO;
        //Change color of text field to light gray
        placeTextField.backgroundColor = [UIColor lightGrayColor];
        //Change color of place label to light gray
        placeLabel.textColor = [UIColor lightGrayColor];
    }
}

#pragma mark - AddBookViewControllerDelegate

/*- (void)addBookViewControllerDidCancel:(AddBookViewController *)controller {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)addBookViewControllerDidSave:(AddBookViewController *)controller {
    [self dismissViewControllerAnimated:YES completion:nil];
}*/

@end
