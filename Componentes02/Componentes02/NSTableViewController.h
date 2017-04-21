//
//  NSTableViewController.h
//  Componentes02
//
//  Created by Felipe Hernandez on 16/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSTableViewController : NSViewController<NSTableViewDataSource>
{
    NSMutableArray *lista;
}
@property (weak) IBOutlet NSTableView *tabla;
- (IBAction)Agregar:(id)sender;
- (IBAction)Eliminar:(id)sender;
@property (weak) IBOutlet NSTextField *txtNombre;
@property (weak) IBOutlet NSTextField *txtDomicilio;
@property (weak) IBOutlet NSButton *chkEstaCasado;

@end
