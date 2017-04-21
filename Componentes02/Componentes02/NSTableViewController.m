//
//  NSTableViewController.m
//  Componentes02
//
//  Created by Felipe Hernandez on 16/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "NSTableViewController.h"
#import "Persona.h"

@implementation NSTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    [self setTitle:@"NSTableView"];
    
    lista = [[NSMutableArray alloc]init];
    
    
    Persona *p = [[Persona alloc] init];
    [p setNombre:@"Felipe"];
    [p setDomicilio:@"Betania #1616 col san felipe"];
    [p setEstaCasado:1];
    
    [lista addObject:p];
    //Recargar la tabla
    [_tabla reloadData];
}


- (IBAction)Agregar:(id)sender {
    Persona *p = [[Persona alloc] init];
    
    [p setNombre:[_txtNombre stringValue]];
    [p setDomicilio:[_txtDomicilio stringValue]];
    [p setEstaCasado:(int)[_chkEstaCasado state]];
    
    [lista addObject:p];
    [_tabla reloadData];
    
    //limpiar las cajas
    [_txtNombre setStringValue:@""];
    [_txtDomicilio setStringValue:@""];
    [_chkEstaCasado setState:0];
  
}

- (IBAction)Eliminar:(id)sender {
    
    @try {
        NSInteger row = [_tabla selectedRow];
        [lista removeObjectAtIndex:row];
        [_tabla reloadData];
    } @catch (NSException *exception) {
        NSLog(@"Error %@",exception.reason);
    } @finally {
        //
    }
    
    
}

-(NSInteger) numberOfRowsInTableView:(NSTableView *)tableView{
    return  [lista count];
}

-(id) tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    
    Persona *p = [lista objectAtIndex:row];
    NSString *identifier = [tableColumn identifier];
    NSString *columna = [p valueForKey:identifier];
    return columna;
    
}

/*
-(void)tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    Persona *p = [lista objectAtIndex:row];
    NSString *identifier = [tableColumn identifier];
    [p setValue:object forKey:identifier];
}*/

@end
