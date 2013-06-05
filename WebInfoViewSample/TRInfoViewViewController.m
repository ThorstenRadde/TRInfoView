//
//  TRInfoViewViewController.m
//  WebInfoViewSample
//
//  Created by Thorsten Radde on 29.05.13.
//  Copyright (c) 2013 Thorsten Radde. All rights reserved.
//

#import "TRInfoViewViewController.h"

@interface TRInfoViewViewController ()

@end

@implementation TRInfoViewViewController
- (id) init {
    self = [super init];
    if (!self) { return nil; }

    //set title to navItem
    [[self navigationItem] setTitle:@"Info"];
    //default filename
    _fileName = @"readme";
    
    return self;
}

- (id) initForFile:(NSString *)name {
    self = [self init];
    if (!self) { return nil;}
    _fileName = name;
    return self;
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    _showNavbarOnExit = self.navigationController.navigationBarHidden;
    
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    
    // add webView
    CGRect bounds = [self.view bounds];
    _webView = [[UIWebView alloc] initWithFrame: bounds];
    _webView.delegate = self;
    [self.view addSubview: _webView];
    
    _webView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    
    //build a request to display html file
    @try {
        NSURL *fileURL =       [NSURL fileURLWithPath:[
                                                       [NSBundle mainBundle] pathForResource:_fileName
                                                       ofType:@"html"]
                                          isDirectory:NO];
        
        [_webView loadRequest:[NSURLRequest requestWithURL: fileURL]];
    }
    @catch (NSException *exception) {
        NSLog(@"Couldn't display html file, caught exception %@", exception);
    }
}


- (void) viewWillDisappear: (BOOL) animated {
    [super viewWillDisappear:animated];
    
    [self.navigationController setNavigationBarHidden:_showNavbarOnExit animated:YES];
}


-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;
{
    if ((navigationType == UIWebViewNavigationTypeLinkClicked) || ([request.URL.scheme isEqualToString:@"mailto"])) {
        [[UIApplication sharedApplication] openURL:request.URL];
        return false; //will open links in Safari or MailApp
    } else {
        return true;
    }
}

@end
