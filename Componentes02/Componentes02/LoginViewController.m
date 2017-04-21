//
//  LoginViewController.m
//  Componentes02
//
//  Created by Felipe Hernandez on 31/12/15.
//  Copyright © 2015 Felipe Hernandez. All rights reserved.
//

#import "LoginViewController.h"
#import "PrincipalViewController.h"

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [self setTitle:@"Login"];
}

- (IBAction)Logear:(id)sender {
    
    if ([[_txtUsuario stringValue] isEqualToString:@"felipe"]
         && [[_txtPassword stringValue] isEqualToString:@"felipe"]) {
        
        NSStoryboard *storyboard = [NSStoryboard storyboardWithName:@"Main"
                                                             bundle:[NSBundle mainBundle]];
        
        PrincipalViewController *controller = (PrincipalViewController *)[storyboard instantiateControllerWithIdentifier:@"PrincipalView"];
        controller.usuario = [_txtUsuario stringValue];
        [controller presentViewControllerAsModalWindow:controller];
        
    }
}
@end
