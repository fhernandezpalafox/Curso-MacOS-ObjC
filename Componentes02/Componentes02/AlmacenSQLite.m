//
//  AlmacenSQLite.m
//  Componentes02
//
//  Created by Felipe Hernandez on 25/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "AlmacenSQLite.h"

@interface AlmacenSQLite ()
                
@end

@implementation AlmacenSQLite

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    [self setTitle:@"Almacenamiento SQLite"];
    
    //LLAMAR EL APPDELEGATE DE LA APLICACION
    appdelegate = [[AppDelegate alloc] init];
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
}

- (IBAction)Consultar:(id)sender {
    
    sqlite3 *database;
    sqlite3_stmt *CompiledStatement;
    
    //abrimos la base de datos de la ruta indicada en el delegate
    if (sqlite3_open([appdelegate.databasepath UTF8String], &database)==SQLITE_OK)
    {
        //podriamos seleccionar solo algunos o todos en el orden deseado asi:
        NSString *sqlStatement  = [NSString stringWithFormat:@"SELECT Persona.id,  Persona.Nombre,  Persona.Domicilio,  Persona.Genero FROM Persona"];
        
        //lanzamos la conuslta y recorremos los resultados si todo ha salido bien
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
            NSLog(@"No se puede leer lso datos");
        }
        
        //libero la consulyta
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
}
@end
