//
//  NSAlertViewViewController.m
//  Componentes02
//
//  Created by Felipe Hernandez on 23/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "NSAlertViewViewController.h"

@implementation NSAlertViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [self setTitle:@"NSAlert"];
}

- (IBAction)alertaSimple:(id)sender {
    
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"Continuar"];
    [alert addButtonWithTitle:@"Cancelar"];
    [alert setMessageText:@"Alerta sencilla"];
    [alert setInformativeText:@"Desea eliminar el registro seleccionado"];
    [alert setAlertStyle:NSWarningAlertStyle];

    NSModalResponse res = [alert runModal];
    if (res == NSAlertFirstButtonReturn) {
        NSLog(@"Continuar");
    }else if (res == NSAlertSecondButtonReturn){
        NSLog(@"Cancelar");
    }
}

- (IBAction)alerta2:(id)sender {
    
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"Continuar"];
    [alert addButtonWithTitle:@"Cancelar"];
    [alert setMessageText:@"Alerta sencilla"];
    [alert setInformativeText:@"Desea eliminar el registro seleccionado"];
    [alert setAlertStyle:NSWarningAlertStyle];
    
    
    [alert beginSheetModalForWindow:self.view.window completionHandler:^(NSModalResponse returnCode) {
        if (returnCode == NSAlertFirstButtonReturn) {
            NSLog(@"Boton continuar clickeado");
        }else if(returnCode == NSAlertSecondButtonReturn){
            NSLog(@"Boton de cancelar clickeado");
        }
    }];

}

- (IBAction)alerta3:(id)sender {
    
    NSAlert *alert = [[NSAlert alloc] init]; // NSAlert alerta  = new NSAlert();
    [alert addButtonWithTitle:@"Continuar"];   //alert.addButtonWithTitle("Continuar");
    [alert setMessageText:@"Alerta sencilla"];
    [alert setInformativeText:@"Se ha realizado la aoperacion correctamente"];
    [alert setAlertStyle:NSInformationalAlertStyle];
    [alert runModal];   //alert.runModal();
}


//Ver mas alertas
//http://www.knowstack.com/nsalert-cocoa-objective-c/


@end
