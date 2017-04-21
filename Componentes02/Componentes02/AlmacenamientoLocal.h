//
//  AlmacenamientoLocal.h
//  Componentes02
//
//  Created by Felipe Hernandez on 25/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AlmacenamientoLocal : NSViewController

@property (weak) IBOutlet NSTextField *txtNombre;
@property (weak) IBOutlet NSTextField *txtDomicilio;
@property (weak) IBOutlet NSComboBox *cmbGenero;
- (IBAction)Insertar:(id)sender;
- (IBAction)Consultar:(id)sender;
- (IBAction)Eliminar:(id)sender;

-(void)MessageBox:(NSString *)Message andtitle:(NSString *)titulo;
-(void)createFileWithName:(NSString *)fileName;

@end
