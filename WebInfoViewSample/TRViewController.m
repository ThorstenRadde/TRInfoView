//
//  TRViewController.m
//  WebInfoViewSample
//
//  Created by Thorsten Radde on 29.05.13.
//  Copyright (c) 2013 Thorsten Radde. All rights reserved.
//

#import "TRViewController.h"

@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    //add title to navItem
    [[self navigationItem] setTitle:@"InfoView Sample"];
    
    //add buttons to navItem
    
    UIButton* infoButton = [UIButton buttonWithType: UIButtonTypeInfoLight];
    infoButton.accessibilityLabel = @"Information";
    infoButton.accessibilityHint = @"Click to access additional information";
    [infoButton addTarget:self action:@selector(showInfo) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *infoBarButton = [[UIBarButtonItem alloc] initWithCustomView:infoButton];
    [self.navigationItem setRightBarButtonItem: infoBarButton animated:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - actions

-(void) showInfo {
    if (!infoViewController) {
        infoViewController = [[TRInfoViewViewController alloc] init];
    }
    
    [self.navigationController pushViewController:infoViewController animated:YES];
}


@end
