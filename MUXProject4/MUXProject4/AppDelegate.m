// Elijah Freestone
// MUX 1310
// Project 4
// October 18th, 2013

//
//  AppDelegate.m
//  MUXProject4
//
//  Created by Elijah Freestone on 10/21/13.
//  Copyright (c) 2013 Elijah Freestone. All rights reserved.
//

#import "AppDelegate.h"
//Import active, all books plus containers
#import "ActiveViewController.h"
#import "ActiveBooks.h"
#import "AllViewController.h"
#import "AllBooks.h"

@implementation AppDelegate {
    NSMutableArray *activeBooksArray, *allBooksArray;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //Create active books array and fill. Each new book entry is a new instance of ActiveBooks container class
    activeBooksArray = [NSMutableArray arrayWithCapacity:20];
    //Book 1
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
	//Dig through stack to find correct controller
	UITabBarController *tabBarController =
    (UITabBarController *)self.window.rootViewController;
	UINavigationController *navigationController =
    [[tabBarController viewControllers] objectAtIndex:0];
	ActiveViewController *activeViewController =
    [[navigationController viewControllers] objectAtIndex:0];
	activeViewController.activeBooksArray = activeBooksArray;
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
