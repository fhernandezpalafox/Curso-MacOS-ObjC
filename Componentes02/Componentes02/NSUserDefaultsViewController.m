//
//  NSUserDefaultsViewController.m
//  Componentes02
//
//  Created by Felipe Hernandez on 27/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "NSUserDefaultsViewController.h"

@interface NSUserDefaultsViewController ()

@end

@implementation NSUserDefaultsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    //referencia
    //http://www.codingexplorer.com/nsuserdefaults-a-swift-introduction/
    
    
    [self setTitle:@"NSUserDefault"];
    
    //verifica si existen datos en las clases NSUserDefaults
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

- (IBAction)Entrar:(id)sender {
 
    NSUserDefaults *userdefault = [NSUserDefaults standardUserDefaults];
    
    if ([[_txtUsuario stringValue] isEqualToString:@"felipe"] && [[_txtPassword stringValue] isEqualToString:@"felipe"] ) {
        
        [userdefault setObject:[_txtUsuario stringValue] forKey:@"usuario"];
        [userdefault setObject:[_txtPassword stringValue] forKey:@"password"];
        
        NSAlert *alert = [[NSAlert alloc] init];
        [alert addButtonWithTitle:@"Continuar"];
        [alert setMessageText:@"Titulo"];
        [alert setInformativeText:@"Se realizo correctamente"];
        [alert setAlertStyle:NSInformationalAlertStyle];
        [alert runModal];
    }

}
@end
