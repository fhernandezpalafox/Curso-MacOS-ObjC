//
//  NSAlertViewViewController.h
//  Componentes02
//
//  Created by Felipe Hernandez on 23/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSAlertViewViewController : NSViewController<NSAlertDelegate>
- (IBAction)alertaSimple:(id)sender;
- (IBAction)alerta2:(id)sender;
- (IBAction)alerta3:(id)sender;

@end
