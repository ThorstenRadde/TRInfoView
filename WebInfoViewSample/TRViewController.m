//
//  TRViewController.m
//  WebInfoViewSample
//
//  Created by Thorsten Radde on 29.05.13.
//  Copyright (c) 2013 Thorsten Radde. All rights reserved.
//

#import "TRViewController.h"

const BOOL showNavBar = YES;

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    if (showNavBar) {
        //add title to navItem
        [[self navigationItem] setTitle:@"InfoView Sample"];
        
        //add button to navItem
        UIButton* infoButton = [UIButton buttonWithType: UIButtonTypeInfoLight];
        infoButton.accessibilityLabel = @"Information";
        infoButton.accessibilityHint = @"Click to access additional information";
        [infoButton addTarget:self action:@selector(showInfo:) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *infoBarButton = [[UIBarButtonItem alloc] initWithCustomView:infoButton];
        [self.navigationItem setRightBarButtonItem: infoBarButton animated:YES];
    } else {
        [self.navigationController setNavigationBarHidden:YES];
    }
}

#pragma mark - actions

-(IBAction)showInfo:(id)sender {
    if (!infoViewController) {
        infoViewController = [[TRInfoViewViewController alloc] init];
    }
    
    [self.navigationController pushViewController:infoViewController animated:YES];
}

@end
