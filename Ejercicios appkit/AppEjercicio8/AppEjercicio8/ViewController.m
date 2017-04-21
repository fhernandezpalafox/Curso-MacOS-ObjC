//
//  ViewController.m
//  AppEjercicio8
//
//  Created by Felipe Hernandez on 29/10/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)irWeb:(id)sender {
    
    NSString *url = [_txtUrl stringValue];
    
    [[self.webview mainFrame] loadRequest:[NSURLRequest
                           requestWithURL:[NSURL
                            URLWithString:url]]];
    
    
}
@end
