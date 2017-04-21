//
//  ViewController.h
//  AppEjercicio15
//
//  Created by Felipe Hernandez on 14/11/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (weak) IBOutlet NSTextField *txtUsuario;
@property (weak) IBOutlet NSSecureTextField *txtPassword;
- (IBAction)Logear:(id)sender;



@end

