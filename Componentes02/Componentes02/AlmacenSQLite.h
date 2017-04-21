//
//  AlmacenSQLite.h
//  Componentes02
//
//  Created by Felipe Hernandez on 25/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <sqlite3.h>
#import "AppDelegate.h"

@interface AlmacenSQLite : NSViewController
{
    AppDelegate *appdelegate;
}
@property (weak) IBOutlet NSTextField *txtNombre;
@property (weak) IBOutlet NSTextField *txtDomicilio;
@property (weak) IBOutlet NSComboBox *cmbGenero;
- (IBAction)Insertar:(id)sender;
- (IBAction)Consultar:(id)sender;
- (IBAction)Eliminar:(id)sender;

@end
