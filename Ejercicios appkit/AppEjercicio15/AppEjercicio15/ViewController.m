//
//  ViewController.m
//  AppEjercicio15
//
//  Created by Felipe Hernandez on 14/11/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"
#import "PrincipalViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)Logear:(id)sender {
    
    if ([[_txtUsuario stringValue] isEqualToString:@"felipe"]
         && [[_txtPassword stringValue] isEqualToString:@"felipe"]) {
        
        NSStoryboard *storyboard = [NSStoryboard
                                    storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        
        PrincipalViewController *controller = (PrincipalViewController *)[storyboard instantiateControllerWithIdentifier:@"Principal"];
        controller.usuario = [_txtUsuario stringValue];
        [controller presentViewControllerAsModalWindow:controller];
        
    }
}
@end
