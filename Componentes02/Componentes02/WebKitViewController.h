//
//  WebKitViewController.h
//  Componentes02
//
//  Created by Felipe Hernandez on 17/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface WebKitViewController : NSViewController
@property (weak) IBOutlet WebView *webview;
- (IBAction)irWeb:(id)sender;

@end
