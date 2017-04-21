//
//  ViewController.m
//  AppEjercicio2
//
//  Created by Felipe Hernandez on 26/10/16.
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


- (IBAction)Alerta1:(id)sender {
    
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"Continuar"];
    [alert addButtonWithTitle:@"Cancelar"];
    [alert setMessageText:@"Alerta sencilla"];
    [alert setInformativeText:@"Desea eliminar el registro seleccionado"];
    [alert setAlertStyle:NSAlertStyleWarning];
    
    NSModalResponse res = [alert runModal];
    if (res == NSAlertFirstButtonReturn) {
        NSLog(@"Continuar");
    }else if (res == NSAlertSecondButtonReturn){
        NSLog(@"Cancelar");
    }

}

- (IBAction)Alerta2:(id)sender{
    
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"Continuar"];
    [alert addButtonWithTitle:@"Cancelar"];
    [alert setMessageText:@"Alerta sencilla"];
    [alert setInformativeText:@"Desea eliminar el registro seleccionado"];
    [alert setAlertStyle:NSAlertStyleWarning];
    
    
    [alert beginSheetModalForWindow:self.view.window
                   completionHandler:^(NSModalResponse returnCode) {
        if (returnCode == NSAlertFirstButtonReturn) {
            NSLog(@"Boton continuar clickeado");
        }else if(returnCode == NSAlertSecondButtonReturn){
            NSLog(@"Boton de cancelar clickeado");
        }
    }];

}
- (IBAction)Alerta3:(id)sender{
    
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"Continuar"];
    [alert setMessageText:@"Alerta sencilla"];
    [alert setInformativeText:@"Se ha realizado la aoperacion correctamente"];
    [alert setAlertStyle:NSAlertStyleInformational];
    [alert runModal];
    
}
@end
