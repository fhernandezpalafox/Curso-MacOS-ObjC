//
//  AlmacenSQLite.m
//  AppEjercicio21
//
//  Created by Felipe Hernandez on 03/01/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import "AlmacenSQLite.h"
#import "Persona.h"

@interface AlmacenSQLite ()

@end

@implementation AlmacenSQLite

@synthesize PersonaArray = _PersonaArray;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    //LLAMAR EL APPDELEGATE DE LA APLICACION
    appdelegate = [[AppDelegate alloc] init];
    
    
    //Cargar el arreglo en la lista de genero
    [_cmbGenero removeAllItems];
    NSArray *nombres = [[NSArray alloc] initWithObjects:@"Masculino",@"Femenino",@"Indistinto", nil];
    [_cmbGenero addItemsWithObjectValues:nombres];
    
    //inicializar la NSMutableArray
     _PersonaArray = [[NSMutableArray alloc]init];
    
    [self ConsultarDatos];
}


- (IBAction)Insertar:(id)sender {
    
    //Ahora instanciamos la variable database de tipo sqlite3
    sqlite3 *database;
    
    //creamos el sqlite3_stmt que contendra  despues la sentencia a ejecutar compilada
    sqlite3_stmt *compileStatement;
    
    //abrimos la base de datos de la ruta indicada en el delegate
    if (sqlite3_open([[appdelegate databasepath] UTF8String], &database)==SQLITE_OK)
    {
        //si no ha habido errores al abrir,creamos al setencia  de insercion
        //como id es autoincrementable no lo indicaremos nosotros
        NSString *sqlStatement  = [NSString stringWithFormat:@"Insert into Persona (\"Nombre\",\"Domicilio\",\"Genero\") VALUES (\"%@\",\"%@\",\"%@\")",[_txtNombre stringValue],[_txtDomicilio stringValue ],[_cmbGenero stringValue]];
        
        //lanzamos la consulta y recorremos los resultados si todo ha ido ok
        if (sqlite3_prepare(database, [sqlStatement UTF8String], -1, &compileStatement, NULL)==SQLITE_OK)
        {
            
            //Mensaje
            [self MessageBox:@"Se inserto correctamente" andTitle:@"Guardar"];
            //limpiamos las cajas de texto y combobox
            [_txtDomicilio setStringValue:@""];
            [_txtNombre setStringValue:@""];
            [_cmbGenero setStringValue:@""];
            
            //En otros casos recorremos los resultados . en este caso no habra
            while (sqlite3_step(compileStatement)==SQLITE_ROW)
            {
                //codigo
            }
        }else
        {
            //puedo informar que hubo un error
        }
        
        //libero la consulta
        sqlite3_finalize(compileStatement);
        
    }
    //cierro la base de datos
    sqlite3_close(database);
    [self ConsultarDatos];
    [_Tabla reloadData];
}


- (IBAction)Consultar:(id)sender {
    
    sqlite3 *database;
    sqlite3_stmt *CompiledStatement;
    
    //abrimos la base de datos de la ruta indicada en el delegate
    if (sqlite3_open([appdelegate.databasepath UTF8String], &database)==SQLITE_OK)
    {
        //podriamos seleccionar solo algunos o todos en el orden deseado asi:
        NSString *sqlStatement  = [NSString stringWithFormat:@"SELECT Persona.id,  Persona.Nombre,  Persona.Domicilio,  Persona.Genero FROM Persona"];
        
        //lanzamos la consulta y recorremos los resultados si todo ha salido bien
        if (sqlite3_prepare_v2(database, [sqlStatement UTF8String], -1, &CompiledStatement, NULL)==SQLITE_OK)
        {
            //recorremos  los resultados. en este caso no habra
            while (sqlite3_step(CompiledStatement)==SQLITE_ROW)
            {
                //leemos las columnas necesarias.aunque algunos valores son numericos prefiero recuperarlos en string y convertirlos luego porque da menos problemas
                
                //NSString *id = [NSString stringWithUTF8String:(char *)sqlite3_column_text(CompiledStatement, 0)];
                NSString *nombre = [NSString stringWithUTF8String:(char *)sqlite3_column_text(CompiledStatement, 1)];
                NSString *domicilio = [NSString stringWithUTF8String:(char *)sqlite3_column_text(CompiledStatement, 2)];
                NSString *genero = [NSString stringWithUTF8String:(char *)sqlite3_column_text(CompiledStatement, 3)];
                
                [_txtDomicilio setStringValue:domicilio];
                [_txtNombre setStringValue:nombre];
                [_cmbGenero setStringValue:genero];
                
            }
        }else
        {
            //indico si hubo un error
            NSLog(@"No se puede leer los datos");
        }
        
        //libero la consulta
        sqlite3_finalize(CompiledStatement);
    }
    
    //cierro la base de datos
    sqlite3_close(database);
    [self ConsultarDatos];
    [_Tabla reloadData];
}



- (void)ConsultarDatos {
    
    sqlite3 *database;
    sqlite3_stmt *CompiledStatement;
    
    [_PersonaArray removeAllObjects];
    
    //abrimos la base de datos de la ruta indicada en el delegate
    if (sqlite3_open([appdelegate.databasepath UTF8String], &database)==SQLITE_OK)
    {
        //podriamos seleccionar solo algunos o todos en el orden deseado asi:
        NSString *sqlStatement  = [NSString stringWithFormat:@"SELECT Persona.id,  Persona.Nombre,  Persona.Domicilio,  Persona.Genero FROM Persona"];
        
        //lanzamos la consulta y recorremos los resultados si todo ha salido bien
        if (sqlite3_prepare_v2(database, [sqlStatement UTF8String], -1, &CompiledStatement, NULL)==SQLITE_OK)
        {
            //recorremos  los resultados. en este caso no habra
            while (sqlite3_step(CompiledStatement)==SQLITE_ROW)
            {
                //leemos las columnas necesarias.aunque algunos valores son numericos prefiero recuperarlos en string y convertirlos luego porque da menos problemas
                
                NSString *Id = [NSString stringWithUTF8String:(char *)sqlite3_column_text(CompiledStatement, 0)];
                NSString *nombre = [NSString stringWithUTF8String:(char *)sqlite3_column_text(CompiledStatement, 1)];
                NSString *domicilio = [NSString stringWithUTF8String:(char *)sqlite3_column_text(CompiledStatement, 2)];
                NSString *genero = [NSString stringWithUTF8String:(char *)sqlite3_column_text(CompiledStatement, 3)];
                
                
                Persona *objPersona  = [[Persona alloc]init];
                [objPersona setNombre:nombre];
                [objPersona setDomicilio:domicilio];
                [objPersona setGenero:genero];
                [objPersona setId:Id];
                
                [_PersonaArray addObject:objPersona];
                
            }
        }else
        {
            //indico si hubo un error
            NSLog(@"No se puede leer los datos");
        }
        
        //libero la consulta
        sqlite3_finalize(CompiledStatement);
    }
    
    //cierro la base de datos
    sqlite3_close(database);
    
}


- (IBAction)Eliminar:(id)sender {
    
    sqlite3 *database;
    sqlite3_stmt *CompileStatement;
    
    
    //abrimos la base de datos de la ruta indicada en el delegate
    if (sqlite3_open([appdelegate.databasepath UTF8String], &database)==SQLITE_OK)
    {
        NSString *sqlStatement  = [NSString stringWithFormat:@"DELETE FROM Persona"];
        //lanzamos la consulta y rrecoremos  los resultados si todo ha salido bien
        if (sqlite3_prepare_v2(database, [sqlStatement UTF8String], -1, &CompileStatement, NULL)==SQLITE_OK)
        {
            //Mensaje
            [self MessageBox:@"Se elimino correctamente" andTitle:@"Eliminar"];
            
            //limpiamos las cajas de texto y combobox
            [_txtDomicilio setStringValue:@""];
            [_txtNombre setStringValue:@""];
            [_cmbGenero setStringValue:@""];
            
            //recorremos los resultados. en este caso no habra
            while (sqlite3_step(CompileStatement)==SQLITE_ROW)
            {
                //codigo
            }
        }else
        {
            NSLog(@"Error en la eliminacion ");
        }
        
        //libero la consulta
        sqlite3_finalize(CompileStatement);
    }
    //cierro la base de datos
    sqlite3_close(database);
    [self ConsultarDatos];
    [_Tabla reloadData];
}


-(void) MessageBox:(NSString *)Message andTitle:(NSString *)titulo{
    
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"Continuar"];
    [alert setMessageText:titulo];
    [alert setInformativeText:Message];
    [alert setAlertStyle:NSAlertStyleInformational];
    [alert runModal];
}


-(NSInteger) numberOfRowsInTableView:(NSTableView *)tableView{
    return  [_PersonaArray count];
}

-(id) tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    
    Persona *p = [_PersonaArray objectAtIndex:row];
    NSString *identifier = [tableColumn identifier];
    NSString *columna = [p valueForKey:identifier];
    return columna;
    
}

@end
