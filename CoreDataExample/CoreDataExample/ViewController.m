//
//  ViewController.m
//  CoreDataExample
//
//  Created by Felipe Hernandez on 28/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
{
    Persona *persona;
    
    AppDelegate *delegate;
    NSManagedObjectContext *context;
    
    NSFetchedResultsController *fecthResultController;
    NSArray *personas;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    delegate = (AppDelegate *)[NSApplication sharedApplication].delegate;
    context = delegate.managedObjectContext;
    
    [self  CargarDatos];
    
    [_Tabla setDataSource:self];
    [_Tabla setDelegate:self];
}


#pragma DataSource

-(NSInteger) numberOfRowsInTableView:(NSTableView *)tableView{
    return  [personas count];
}

-(id) tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    
    Persona *p = [personas objectAtIndex:row];
    NSString *val = (NSString*)[p valueForKey:tableColumn.identifier];
    
    return val;
    //NSString *identifier = [tableColumn identifier];
    //NSString *columna = [p valueForKey:identifier];
    //return columna;
    
}

#pragma Delegate

-(void)tableViewSelectionDidChange:(NSNotification *)notification{
 
    if ([_Tabla selectedRow] != -1) {
        
        NSTableView *tableview =  notification.object;
        Persona  *personaSelect = [personas objectAtIndex:[tableview selectedRow]];
        persona =  personaSelect;
        
        [_txtNombre setStringValue:persona.nombre];
        [_txtEdad setStringValue:[NSString stringWithFormat:@"%d", persona.edad]];
        [_txtDomicilio setStringValue:persona.domicilio];
        [_cmbEstadoCivil setStringValue:persona.estadoCivil];
        
        
        [_txtNombre setStringValue:@""];
        [_txtEdad setStringValue:@""];
        [_txtDomicilio setStringValue:@""];
        [_cmbEstadoCivil setStringValue:@""];
    }
 
}


- (IBAction)Guardar:(id)sender {
    

    persona =  (Persona*)[NSEntityDescription insertNewObjectForEntityForName:@"Persona" inManagedObjectContext:context];
    
    persona.nombre = _txtNombre.stringValue;
    persona.domicilio = _txtDomicilio.stringValue;
    persona.edad = [_txtEdad intValue];
    persona.estadoCivil = _cmbEstadoCivil.stringValue;
    
    NSError *error = nil;
    
    if (![context save:&error]) {
        NSLog(@"Sucedio un error %@",[error localizedDescription]);
    }else{
        [self MessageBox:@"Guardar informacion" andMensaje:@"Se guardo correctamente"];
        
        [_txtNombre setStringValue:@""];
        [_txtEdad setStringValue:@""];
        [_txtDomicilio setStringValue:@""];
        [_cmbEstadoCivil setStringValue:@""];
    }
}

- (IBAction)Actualizar:(id)sender {
    
    persona.nombre = _txtNombre.stringValue;
    persona.domicilio = _txtDomicilio.stringValue;
    persona.edad = [_txtEdad intValue];
    persona.estadoCivil = _cmbEstadoCivil.stringValue;
    
    NSError *error = nil;
    
    if (![context save:&error]) {
        NSLog(@"Sucedio un error %@",[error localizedDescription]);
    }else{
        [self MessageBox:@"Actualizar informacion" andMensaje:@"Se actualizo correctamente"];
        
        [_txtNombre setStringValue:@""];
        [_txtEdad setStringValue:@""];
        [_txtDomicilio setStringValue:@""];
        [_cmbEstadoCivil setStringValue:@""];
    }
}

- (IBAction)Eliminar:(id)sender {
    
    //codigos GUIA
    //NSInteger filaSeleccionada = [_Tabla selectedRow];
    // Persona *personadelete = [fecthResultController objectAtIndexPath:[NSIndexPath indexPathWithIndex:filaSeleccionada]];
    
    
    @try {
        Persona  *personadelete = [personas objectAtIndex:[_Tabla selectedRow]];
        [context deleteObject:personadelete];
        
        NSError *error= nil;
        if (![context save:&error]) {
            NSLog(@"No se puede borrar el objeto %@",[error localizedDescription]);
        }else {
            [self MessageBox:@"Eliminar informacion" andMensaje:@"Se elimino correctamente"];
        }
    } @catch (NSException *exception) {
        NSLog(@"Error %@",[exception reason]);
        [self MessageBox:@"Error" andMensaje:@"Error de eliminacion"];
    } @finally {
       //
    }
   
    
}

-(void) MessageBox:(NSString *)Title andMensaje:(NSString *)Mensaje{
    
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"Continuar"];
    [alert setMessageText:Title];
    [alert setInformativeText:Mensaje];
    [alert setAlertStyle:NSAlertStyleInformational];
    [alert runModal];
    
    [self CargarDatos];
    [_Tabla reloadData];
}

-(void) CargarDatos{

    //consultar datos
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Persona"];
    NSSortDescriptor *sortdescriptor = [[NSSortDescriptor alloc] initWithKey:@"nombre" ascending:YES];
    request.sortDescriptors = @[sortdescriptor];
    
    fecthResultController = [[NSFetchedResultsController alloc] initWithFetchRequest:request managedObjectContext:context sectionNameKeyPath:nil cacheName:nil];
    fecthResultController.delegate =  self;
    
    NSError *error2 = nil;
    if ([fecthResultController performFetch:&error2]) {
        personas = fecthResultController.fetchedObjects;
    }else{
        NSLog(@"No se pueden obtener los elementos por el error %@",[error2 localizedDescription]);
    }

}
@end
