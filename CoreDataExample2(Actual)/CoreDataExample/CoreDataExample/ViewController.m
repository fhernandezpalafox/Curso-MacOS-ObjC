//
//  ViewController.m
//  CoreDataExample
//
//  Created by Felipe Hernandez on 16/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController
{
    Persona *persona;
    NSManagedObjectContext *context; //creamos un objeto del tipo NSManagedObjectContext que almacena el conexto de Core Data
    NSFetchedResultsController *fecthResultController;
    NSArray *personas; //NSArray contenido de un arreglo

}

/*
 - (NSManagedObjectModel *)managedObjectModel. NSManagedObjectModel es la clase que contiene la definición de cada uno de los objetos o entidades que almacenamos en la base de datos. Normalmente este método no lo utilizaremos ya que nosotros vamos a utilizar el editor que hemos visto antes, con el que podremos crear nuevas entidades, crear sus atributos y relaciones.
 
 - (NSPersistentStoreCoordinator *)persistentStoreCoordinator. Aquí es donde configuramos los nombres y las ubicaciones de las bases de datos que se usarán para almacenar los objetos. Cuando un "managed object" necesite guardar algo pasará por este método.
 
 - (NSManagedObjectContext *)managedObjectContext. Esta clase NSManagedObjectContext será la más usada con diferencia de las tres, y por tanto, la más importante. La utilizaremos básicamente para obtener objetos, insertarlos o borrarlos.
 
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    
    context = ((AppDelegate*)[[NSApplication sharedApplication] delegate]).persistentContainer.viewContext;
    
    [self CargarDatos];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

//NSTableViewDataSource
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView{
    return [personas count];
}

- (nullable id)tableView:(NSTableView *)tableView objectValueForTableColumn:(nullable NSTableColumn *)tableColumn row:(NSInteger)row{
    Persona *p = [personas objectAtIndex:row];
    NSString *val = (NSString *)[p valueForKey:tableColumn.identifier];
    return val;
}
//NSTableViewDataSource


//NSTableViewDelegate
- (void)tableViewSelectionDidChange:(NSNotification *)notification{

    if ([_Tabla selectedRow] != -1) {
        NSTableView *tableView = notification.object;
        Persona *personaSelect = [personas objectAtIndex:[tableView selectedRow]];
        
        persona = personaSelect;
        
        [_txtNombre setStringValue:persona.nombre];
        [_txtEdad setStringValue:[NSString stringWithFormat:@"%d", persona.edad]];
        [_txtDomicilio setStringValue:persona.domicilio];
        [_cmbEstadoCivil setStringValue:persona.estadoCivil];
    }
}
//NSTableViewDelegate


- (IBAction)onEliminar:(id)sender {
    
    @try {
        Persona *personadelete = [personas objectAtIndex:[_Tabla selectedRow]];
        [context deleteObject:personadelete];
        
        
        NSError *error= nil;
        if (![context save:&error]) {
            NSLog(@"No se puede borrar el objeto %@",[error localizedDescription]);
        }else {
            [self MessageBox:@"Eliminar informacion" andMessage:@"Se elimino correctamente"];
            
            [_txtNombre setStringValue:@""];
            [_txtEdad setStringValue:@""];
            [_txtDomicilio setStringValue:@""];
            [_cmbEstadoCivil setStringValue:@""];
            
            persona = nil;
            
        }
    } @catch (NSException *exception) {
        NSLog(@"Error %@",[exception reason]);
        [self MessageBox:@"Error" andMessage:@"Error de eliminacion"];
    } @finally {
        //
    }
    
    [self CargarDatos];
    [_Tabla reloadData];
}

- (IBAction)onActualizar:(id)sender {
    
    persona.nombre = _txtNombre.stringValue;
    persona.domicilio = _txtDomicilio.stringValue;
    persona.edad = [_txtEdad intValue];
    persona.estadoCivil = _cmbEstadoCivil.stringValue;
    
    NSError *error = nil;
    
    if (![context save:&error]) {
        NSLog(@"Sucedio un error %@",[error localizedDescription]);
    }else{
        [self MessageBox:@"Actualizar informacion" andMessage:@"Se actualizo correctamente"];
        
        [_txtNombre setStringValue:@""];
        [_txtEdad setStringValue:@""];
        [_txtDomicilio setStringValue:@""];
        [_cmbEstadoCivil setStringValue:@""];
    }
    
    [self CargarDatos];
    [_Tabla reloadData];
}

- (IBAction)onGuardar:(id)sender {
    
    NSManagedObject *entityPersona = [NSEntityDescription insertNewObjectForEntityForName:@"Persona" inManagedObjectContext:context];
    [entityPersona setValue:[_txtDomicilio stringValue] forKey:@"domicilio"];
    [entityPersona setValue:[NSNumber numberWithInteger:[[_txtEdad stringValue] integerValue]] forKey:@"edad"];
    [entityPersona setValue:[_cmbEstadoCivil stringValue] forKey:@"estadoCivil"];
    [entityPersona setValue:[_txtNombre stringValue] forKey:@"nombre"];
    
    NSError *error = nil;
    
    if (![context save:&error]) {
        NSLog(@"Sucedio un error %@",[error localizedDescription]);
    }else{
    
        [self MessageBox:@"Guardar informacion" andMessage:@"Se guardo correctamente"];
        
        [_txtNombre setStringValue:@""];
        [_txtEdad setStringValue:@""];
        [_txtDomicilio setStringValue:@""];
        [_cmbEstadoCivil setStringValue:@""];
        
    }
    
    [self CargarDatos];
    [_Tabla reloadData];
    
}


-(void) CargarDatos{
    
    personas = nil;
    fecthResultController  = nil;
    
    
    NSFetchRequest *request = [[NSFetchRequest alloc] initWithEntityName:@"Persona"];
    NSSortDescriptor *sortdescriptor = [[NSSortDescriptor alloc] initWithKey:@"nombre" ascending:YES];
    request.sortDescriptors  = @[sortdescriptor];
    
    fecthResultController = [[NSFetchedResultsController alloc] initWithFetchRequest:request
                                                                managedObjectContext:context
                                                                  sectionNameKeyPath:nil
                                                                           cacheName:nil];
    fecthResultController.delegate  =  self;
    
    NSError *error2 =  nil;
    if ([fecthResultController performFetch:&error2]) {
        personas =  fecthResultController.fetchedObjects;
    }else{
        NSLog(@"No se pueden obtener los elementos por el error %@",[error2 localizedDescription]);
    }
}

-(void) MessageBox:(NSString *)Title andMessage:(NSString *)Mensaje{
    
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"Continuar"];
    [alert setMessageText:Title];
    [alert setInformativeText:Mensaje];
    [alert setAlertStyle:NSAlertStyleInformational];
    [alert runModal];
}

@end
