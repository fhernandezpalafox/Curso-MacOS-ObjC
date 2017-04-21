//
//  ViewController.m
//  AppEjercicio20
//
//  Created by Felipe Hernandez on 29/12/16.
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

-(IBAction)EjecutarNotificacion:(id)sender{
 
    NSUserNotification *notificacion =  [[NSUserNotification alloc] init];
    notificacion.title = @"Notificacion";
    notificacion.hasActionButton = YES;
    
    notificacion.contentImage = [NSImage imageNamed:@"iconInformation"];
    notificacion.soundName = NSUserNotificationDefaultSoundName;
    
    
    notificacion.informativeText = [NSString stringWithFormat:@"Esta es una notificacion de prueba"];
    [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:notificacion];
    
    
    
    [self NotificacionProgramada];

}

- (IBAction)Notificacion2:(id)sender {
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:5.0
                                                      target:self
                                                    selector:@selector(notificar)
                                                    userInfo:nil
                                                     repeats:NO];
    
}

-(void) notificar{
    NSUserNotificationCenter *nc = [NSUserNotificationCenter defaultUserNotificationCenter];
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    nc.delegate  = self;
    notification.title = @"Hola Felipe";
    notification.informativeText = @"Que estas haciendo";
    notification.subtitle = @"Notificacion";
    [nc deliverNotification:notification];
}


-(void) NotificacionProgramada{
    
    NSUserNotification *notification = [[NSUserNotification alloc] init];
    notification.title = @"Notificacion";
    
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


-(BOOL) userNotificationCenter:(NSUserNotificationCenter *)center shouldPresentNotification:(NSUserNotification *)notification{
    return YES;
}

-(void) userNotificationCenter:(NSUserNotificationCenter *)center didActivateNotification:(NSUserNotification *)notification{
    
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"Continuar"];
    [alert setMessageText:@"Alerta sensilla"];
    [alert setInformativeText:@"Se ha realizado la operacion correctamente"];
    [alert setAlertStyle:NSAlertStyleInformational];
    [alert runModal];
    
    [center removeDeliveredNotification:notification];
    
}
@end
