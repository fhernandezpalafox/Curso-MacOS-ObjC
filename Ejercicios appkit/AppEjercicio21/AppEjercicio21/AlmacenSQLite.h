//
//  AlmacenSQLite.h
//  AppEjercicio21
//
//  Created by Felipe Hernandez on 03/01/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <sqlite3.h>
#import "AppDelegate.h"

@interface AlmacenSQLite : NSViewController<NSTableViewDataSource>
{
  AppDelegate *appdelegate;
}
@property (nonatomic,retain) NSMutableArray *PersonaArray;
@property (weak) IBOutlet NSTextField *txtNombre;
@property (weak) IBOutlet NSTextField *txtDomicilio;
@property (weak) IBOutlet NSComboBox *cmbGenero;
@property (weak) IBOutlet NSTableView *Tabla;

- (IBAction)Insertar:(id)sender;
- (IBAction)Consultar:(id)sender;
- (IBAction)Eliminar:(id)sender;


-(void)MessageBox:(NSString *)Message andTitle:(NSString *)titulo;
- (void)ConsultarDatos;
@end
