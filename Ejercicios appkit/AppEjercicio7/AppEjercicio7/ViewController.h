//
//  ViewController.h
//  AppEjercicio7
//
//  Created by Felipe Hernandez on 29/10/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController<NSTableViewDataSource>
{
    NSMutableArray *lista;
}

@property (weak) IBOutlet NSTableView *tabla;
@property (weak) IBOutlet NSTextField *txtNombre;
@property (weak) IBOutlet NSTextField *txtDomicilio;
@property (weak) IBOutlet NSButton *chkEstaCasado;


- (IBAction)Agregar:(id)sender;
- (IBAction)Eliminar:(id)sender;


@end

