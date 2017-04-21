//
//  ViewController.m
//  AppEjercicio22
//
//  Created by Felipe Hernandez on 05/01/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //verifica si existen datos en las clase NSUserDefaults
    NSUserDefaults *userdefault = [NSUserDefaults standardUserDefaults];
    
    if ([userdefault stringForKey:@"usuario"] != nil) {
        NSString *usuario = [userdefault stringForKey:@"usuario"];
        [_txtUsuario setStringValue:usuario];
    }
    
    if ([userdefault stringForKey:@"password"] != nil) {
        NSString *password = [userdefault stringForKey:@"password"];
        [_txtPassword setStringValue:password];
    }
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)Entrar:(id)sender {
    
    
    NSUserDefaults *userdefault = [NSUserDefaults standardUserDefaults];
    
    if ([[_txtUsuario stringValue] isEqualToString:@"felipe"] && [[_txtPassword stringValue] isEqualToString:@"felipe"] ) {
        
        [userdefault setObject:[_txtUsuario stringValue] forKey:@"usuario"];
        [userdefault setObject:[_txtPassword stringValue] forKey:@"password"];
        
        NSAlert *alert = [[NSAlert alloc] init];
        [alert addButtonWithTitle:@"Continuar"];
        [alert setMessageText:@"Titulo"];
        [alert setInformativeText:@"Se realizo correctamente"];
        [alert setAlertStyle:NSAlertStyleInformational];
        [alert runModal];
    }
    
}
@end
