//
//  MenuViewController.m
//  Componentes02
//
//  Created by Felipe Hernandez on 17/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "MenuViewController.h"
#import "NSTableViewController.h"

@implementation MenuViewController

-(IBAction)Saludar:(id)sender{
    
    [self Alerta:@"Saludar" andMessage:@"Hola a todos"];
    
}
-(IBAction)Despedir:(id)sender{
    [self Alerta:@"Despedir" andMessage:@"Despedir a todos"];
    
}

-(IBAction)LlamarVentana:(id)sender{
    NSStoryboard *storyboard = [NSStoryboard storyboardWithName:@"Main"
                                                         bundle:[NSBundle mainBundle]];
    NSTableViewController *controller = (NSTableViewController *)[storyboard instantiateControllerWithIdentifier:@"NSTableView"];
    [controller presentViewControllerAsModalWindow:controller];
}


-(void)Alerta:(NSString *)titulo andMessage:(NSString *)Mensaje{
    NSAlert *alerta = [[NSAlert alloc]init];
    [alerta addButtonWithTitle:@"Aceptar"];
    [alerta addButtonWithTitle:@"Cancelar"];
    [alerta setMessageText:titulo];
    [alerta setInformativeText:Mensaje];
    [alerta setAlertStyle:NSInformationalAlertStyle];
    NSModalResponse res = [alerta runModal];
    if (res == NSAlertFirstButtonReturn) {
        NSLog(@"Aceptar");
    }else if (res == NSAlertSecondButtonReturn){
        NSLog(@"Cancelar");
    }
}
@end
