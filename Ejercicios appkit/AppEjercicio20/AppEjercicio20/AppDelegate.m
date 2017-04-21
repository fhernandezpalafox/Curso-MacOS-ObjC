//
//  AppDelegate.m
//  AppEjercicio20
//
//  Created by Felipe Hernandez on 29/12/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSUserNotificationCenter *userNotificationCenter = [NSUserNotificationCenter defaultUserNotificationCenter];
    userNotificationCenter.delegate = self;
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
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
    
    
    notification=nil;
    [center removeDeliveredNotification:notification];
    
}

@end
