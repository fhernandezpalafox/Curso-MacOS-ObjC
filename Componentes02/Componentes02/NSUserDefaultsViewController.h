//
//  NSUserDefaultsViewController.h
//  Componentes02
//
//  Created by Felipe Hernandez on 27/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSUserDefaultsViewController : NSViewController
@property (weak) IBOutlet NSTextField *txtUsuario;
@property (weak) IBOutlet NSSecureTextField *txtPassword;
- (IBAction)Entrar:(id)sender;

@end
