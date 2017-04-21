//
//  MenuViewController.h
//  AppEjercicio23
//
//  Created by Felipe Hernandez on 05/01/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface MenuViewController : NSMenu
- (IBAction)EventItem1:(id)sender;
- (IBAction)EventItem2:(id)sender;
- (IBAction)EventItem3:(id)sender;


-(void)Alerta:(NSString *)titulo andMessage:(NSString *)Mensaje;
@end
