//
//  AlmacenamientoLocal.h
//  AppEjercicio21
//
//  Created by Felipe Hernandez on 03/01/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AlmacenamientoLocal : NSViewController
@property (weak) IBOutlet NSTextField *txtNombre;
@property (weak) IBOutlet NSTextField *txtDomicilio;
@property (weak) IBOutlet NSComboBox *cmbGenero;
- (IBAction)Insertar:(id)sender;
- (IBAction)Consultar:(id)sender;
- (IBAction)Eliminar:(id)sender;

//metodos necesarios
-(void)MessageBox:(NSString *)Message andTitle:(NSString *)titulo;
-(void)createFileWithName:(NSString *)fileName;

@end
