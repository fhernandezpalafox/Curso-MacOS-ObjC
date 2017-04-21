//
//  Notificaciones.h
//  Componentes02
//
//  Created by Felipe Hernandez on 25/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Notificaciones : NSViewController<NSUserNotificationCenterDelegate>
- (IBAction)ejecutarNotificacion:(id)sender;
-(void) NotificacionProgramada;
@end
