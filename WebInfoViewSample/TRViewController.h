//
//  TRViewController.h
//  WebInfoViewSample
//
//  Created by Thorsten Radde on 29.05.13.
//  Copyright (c) 2013 Thorsten Radde. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TRInfoViewViewController.h"

@interface TRViewController : UIViewController {
    TRInfoViewViewController *infoViewController;
}

-(IBAction)showInfo:(id)sender;

@end
