//
//  MenuViewController.m
//  AppEjercicio23
//
//  Created by Felipe Hernandez on 05/01/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import "MenuViewController.h"
#import "EjemploViewController.h"


@implementation MenuViewController

- (IBAction)EventItem1:(id)sender {
        [self Alerta:@"Saludar" andMessage:@"Hola a todos"];
}

- (IBAction)EventItem2:(id)sender {
        [self Alerta:@"Despedir" andMessage:@"Despedir a todos"];
}

- (IBAction)EventItem3:(id)sender {

    NSStoryboard *storyboard = [NSStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    
    EjemploViewController *controller = (EjemploViewController *)[storyboard instantiateControllerWithIdentifier:@"NSEjemploView"];
    
    [controller presentViewControllerAsModalWindow:controller];
    
}

-(void)Alerta:(NSString *)titulo andMessage:(NSString *)Mensaje{
    NSAlert *alerta = [[NSAlert alloc]init];
    [alerta addButtonWithTitle:@"Aceptar"];
    [alerta addButtonWithTitle:@"Cancelar"];
    [alerta setMessageText:titulo];
    [alerta setInformativeText:Mensaje];
    [alerta setAlertStyle:NSAlertStyleInformational];
    NSModalResponse res = [alerta runModal];
    if (res == NSAlertFirstButtonReturn) {
        NSLog(@"Aceptar");
    }else if (res == NSAlertSecondButtonReturn){
        NSLog(@"Cancelar");
    }
}
@end
