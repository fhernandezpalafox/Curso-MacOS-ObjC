//
//  ViewController.h
//  CoreDataExample
//
//  Created by Felipe Hernandez on 28/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"
#import "Persona+CoreDataClass.h"

#import <CoreData/CoreData.h>

@interface ViewController : NSViewController <NSFetchedResultsControllerDelegate,NSTableViewDataSource,NSTableViewDelegate>
@property (weak) IBOutlet NSTableView *Tabla;
@property (weak) IBOutlet NSTextField *txtNombre;
@property (weak) IBOutlet NSTextField *txtEdad;
@property (weak) IBOutlet NSComboBox *cmbEstadoCivil;
@property (weak) IBOutlet NSTextField *txtDomicilio;
- (IBAction)Guardar:(id)sender;
- (IBAction)Actualizar:(id)sender;
- (IBAction)Eliminar:(id)sender;

-(void) MessageBox:(NSString *)Title andMensaje:(NSString *)Mensaje;
-(void) CargarDatos;
@end

