//
//  WebKitViewController.m
//  Componentes02
//
//  Created by Felipe Hernandez on 17/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "WebKitViewController.h"

@implementation WebKitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    [self setTitle:@"Webkit View"];
}

- (IBAction)irWeb:(id)sender {
    
    NSString *url = @"http://www.google.com";
    [[self.webview mainFrame] loadRequest:[NSURLRequest
                           requestWithURL:[NSURL URLWithString:url]]];
}
@end
