//
//  ViewController.h
//  AppEjercicio20
//
//  Created by Felipe Hernandez on 29/12/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSUserNotificationCenterDelegate>
-(IBAction) EjecutarNotificacion:(id)sender;
- (IBAction)Notificacion2:(id)sender;
-(void) NotificacionProgramada;
@end

