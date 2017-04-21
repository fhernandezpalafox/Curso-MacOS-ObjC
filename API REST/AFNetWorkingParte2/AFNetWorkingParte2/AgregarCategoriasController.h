//
//  AgregarCategoriasController.h
//  AFNetWorkingParte2
//
//  Created by Felipe Hernandez on 13/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Category.h"
#import "ViewController.h"


@interface AgregarCategoriasController : NSViewController

@property (nonatomic,retain) ViewController* viewController;
@property BOOL esNuevo;
@property (nonatomic,retain) Category *category;

@property (weak) IBOutlet NSTextField *txtNombre;
@property (weak) IBOutlet NSTextField *txtDescripcion;
@property (weak) IBOutlet NSTextField *lblInformacion;
@property (weak) IBOutlet NSProgressIndicator *progressIndicator;


@property (weak) IBOutlet NSButton *btnModificar;
@property (weak) IBOutlet NSButton *btnGuardar;

- (IBAction)onModificar:(id)sender;
- (IBAction)onGuardar:(id)sender;


-(void) InicializarProgress;
-(void) FinalizarProgress;


@end
