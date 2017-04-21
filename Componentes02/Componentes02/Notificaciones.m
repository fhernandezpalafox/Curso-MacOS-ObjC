//
//  Notificaciones.m
//  Componentes02
//
//  Created by Felipe Hernandez on 25/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "Notificaciones.h"

@interface Notificaciones ()

@end

@implementation Notificaciones

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    [self setTitle:@"Notificaciones"];
}

- (IBAction)ejecutarNotificacion:(id)sender {
    
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    notification.title = @"Notificacion";
    notification.hasActionButton = YES;
    
    notification.contentImage = [NSImage imageNamed:@"iconInformation"];
    notification.soundName = NSUserNotificationDefaultSoundName;
    
    
    notification.informativeText = [NSString stringWithFormat:@"Esta es una notificacion de prueba"];
    
    [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:notification];
    
    [self NotificacionProgramada];
}

-(BOOL) userNotificationCenter:(NSUserNotificationCenter *)center shouldPresentNotification:(NSUserNotification *)notification{
    return YES;
}

-(void) NotificacionProgramada{

    NSUserNotification *notification = [[NSUserNotification alloc] init];
    notification.title = @"Notificacion";
    notification.hasActionButton = YES;
    
    notification.contentImage = [NSImage imageNamed:@"iconInformation"];
    notification.soundName = NSUserNotificationDefaultSoundName;
    notification.deliveryDate= [NSDate dateWithTimeIntervalSinceNow:5];
    
    
    //[notification setHasActionButton:YES];
    //[notification setActionButtonTitle:@"Aceptar"];
    //[notification setOtherButtonTitle:@"Cancelar"];
    
    notification.informativeText = [NSString stringWithFormat:@"Esta es una notificacion Programada"];
    
    
    if ([NSUserNotificationCenter defaultUserNotificationCenter]) {
        [[NSUserNotificationCenter defaultUserNotificationCenter] scheduleNotification:notification ];
    }
    
}

-(void) userNotificationCenter:(NSUserNotificationCenter *)center didActivateNotification:(NSUserNotification *)notification{

    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"Continuar"];
    [alert setMessageText:@"Alerta sensilla"];
    [alert setInformativeText:@"Se ha realizado la aoperacion correctamente"];
    [alert setAlertStyle:NSInformationalAlertStyle];
    [alert runModal];
    
    [center removeDeliveredNotification:notification];
    
}
@end
