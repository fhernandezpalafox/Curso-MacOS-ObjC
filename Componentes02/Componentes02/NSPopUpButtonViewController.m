//
//  NSPopUpButtonViewController.m
//  Componentes02
//
//  Created by Felipe Hernandez on 16/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "NSPopUpButtonViewController.h"

@implementation NSPopUpButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [self setTitle:@"NSPopUpButton"];
    
    //Cargar el arreglo en la lista
    NSArray *nombres = [[NSArray alloc] initWithObjects:@"Juan",@"Pedro",@"Felipe", nil];
    [_Lista addItemsWithTitles:nombres];
    
}

- (IBAction)Agregar:(id)sender {
    [_popUp addItemWithTitle:[_txtItem stringValue]];
    [_txtItem setStringValue:@""];
}
- (IBAction)Cambia:(id)sender {
    [_lblInformacion setStringValue:[_popUp titleOfSelectedItem]];
}
@end
