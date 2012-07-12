//
//  DLViewController.m
//  NSDate
//
//  Created by jeffry Bobb on 7/11/12.
//  Copyright (c) 2012 Develomentional Development. All rights reserved.
//

#import "DLViewController.h"
#import "Date_Class.h"
@interface DLViewController ()

@end

@implementation DLViewController
@synthesize longStyleDate;
@synthesize shortStyleDate;
@synthesize fullStyleDate;
@synthesize mediumStyleDate;

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.longStyleDate.text = [Date_Class.DDate Todays_Date_Long];
    self.shortStyleDate.text = [Date_Class.DDate Todays_Date_short];
    self.fullStyleDate.text = [Date_Class.DDate Todays_Date_Full];
    self.mediumStyleDate.text = [Date_Class.DDate Todays_Date_Medium];
}

- (void)viewDidUnload
{
    [self setLongStyleDate:nil];
    [self setShortStyleDate:nil];
    [self setFullStyleDate:nil];
    [self setMediumStyleDate:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
