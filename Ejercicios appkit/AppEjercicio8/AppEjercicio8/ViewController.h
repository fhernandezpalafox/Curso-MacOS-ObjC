//
//  ViewController.h
//  AppEjercicio8
//
//  Created by Felipe Hernandez on 29/10/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface ViewController : NSViewController
@property (weak) IBOutlet WebView *webview;
@property (weak) IBOutlet NSTextField *txtUrl;

- (IBAction)irWeb:(id)sender;

@end

