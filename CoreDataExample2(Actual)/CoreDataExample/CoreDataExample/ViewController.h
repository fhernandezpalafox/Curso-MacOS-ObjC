//
//  ViewController.h
//  CoreDataExample
//
//  Created by Felipe Hernandez on 16/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"
#import "Persona+CoreDataClass.h"
#import <CoreData/CoreData.h>

@interface ViewController : NSViewController<NSTableViewDelegate,NSTableViewDataSource,NSFetchedResultsControllerDelegate>

@property (weak) IBOutlet NSTextField *txtNombre;
@property (weak) IBOutlet NSTextField *txtEdad;
@property (weak) IBOutlet NSComboBox *cmbEstadoCivil;
@property (weak) IBOutlet NSTextField *txtDomicilio;
@property (weak) IBOutlet NSTableView *Tabla;

- (IBAction)onEliminar:(id)sender;
- (IBAction)onActualizar:(id)sender;
- (IBAction)onGuardar:(id)sender;

-(void) CargarDatos;
-(void) MessageBox:(NSString *)Title andMessage:(NSString *)Mensaje;


@end

