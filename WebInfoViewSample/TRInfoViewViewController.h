//
//  TRInfoViewViewController.h
//  WebInfoViewSample
//
//  Created by Thorsten Radde on 29.05.13.
//  Copyright (c) 2013 Thorsten Radde. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TRInfoViewViewController : UIViewController <UIWebViewDelegate> {
    UIWebView *_webView;
    NSString *_fileName;
    BOOL _showNavbarOnExit;
}

- (id) initForFile: (NSString *)name;

@end
