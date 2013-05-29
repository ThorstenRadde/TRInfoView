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
    if (self) {
        //set title to navItem
        [[self navigationItem] setTitle:@"Info"];
        //default filename
        _fileName = @"readme";
    }
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
    
    self.navigationController.navigationBarHidden = NO;
    
    // add webView
    CGRect bounds = [self.view bounds];
    _webView = [[UIWebView alloc] initWithFrame: bounds];
    _webView.delegate = self;
    [self.view addSubview: _webView];
    
    //build a request to display help.html
    [_webView loadRequest:[NSURLRequest requestWithURL:
                           [NSURL fileURLWithPath:[
                                                   [NSBundle mainBundle] pathForResource:_fileName
                                                   ofType:@"html"]
                                      isDirectory:NO]]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void) viewWillDisappear: (BOOL) animated {
    [super viewWillDisappear:animated];
    
	self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
