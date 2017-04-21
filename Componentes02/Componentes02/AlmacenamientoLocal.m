//
//  AlmacenamientoLocal.m
//  Componentes02
//
//  Created by Felipe Hernandez on 25/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "AlmacenamientoLocal.h"

@interface AlmacenamientoLocal ()
{
    NSFileHandle *archivo;
    NSMutableData *data;
    NSFileManager *raiz;
}
@end

@implementation AlmacenamientoLocal

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
     [self setTitle:@"Almacenamiento Local"];
    
    //Cargar el arreglo en la lista
    
    [_cmbGenero removeAllItems];
    NSArray *nombres = [[NSArray alloc] initWithObjects:@"Masculino",@"Femenino",@"indistinto", nil];
    [_cmbGenero addItemsWithObjectValues:nombres];
    
    raiz = [NSFileManager defaultManager];
    
    
    if ([raiz fileExistsAtPath:@"/Users/felipehernandez/Documents/archivo.txt"] ==  NO) {
        [self createFileWithName:@"archivo.txt"];
    }
    
    archivo = [NSFileHandle fileHandleForUpdatingAtPath:@"/Users/felipehernandez/Documents/archivo.txt"];
    if (archivo == nil) {
        NSLog(@"Error al abrir el archivo");
    }
    [archivo seekToFileOffset:10];
}

- (IBAction)Insertar:(id)sender {
    
    @try {
        
        NSMutableString *informacion = [NSMutableString new];
        [informacion appendString:[_txtNombre stringValue]];
        [informacion appendString:@"-"];
        [informacion appendString:[_txtDomicilio stringValue]];
        [informacion appendString:@"-"];
        [informacion appendString:[_cmbGenero stringValue]];
        
        const char  *infor = [informacion cStringUsingEncoding:NSASCIIStringEncoding];
        
        data = [NSMutableData dataWithBytes:infor length:strlen(infor)];
        
        //escribir sobre el archivo
        [archivo writeData:data];
        
        //Limpiar las cajas de texto
        [_txtDomicilio setStringValue:@""];
        [_txtNombre setStringValue:@""];
        [_cmbGenero setStringValue:@""];
        
        //Mensaje
        [self MessageBox:@"Se inserto correctamente" andtitle:@"Guardar"];
        
    } @catch (NSException *exception) {
        NSLog(@"Error %@",[exception reason]);
    } @finally {
        [archivo closeFile];
    }

}

- (IBAction)Consultar:(id)sender {
    NSData *data;
    
    [archivo seekToFileOffset:10];
    data = [archivo readDataToEndOfFile];
    
    NSString *str = [[NSString alloc] initWithData:data
                                          encoding:NSUTF8StringEncoding];
    NSArray *arreglo = [str componentsSeparatedByString:@"-"];
    
    [_txtNombre setStringValue:[arreglo objectAtIndex:0]];
    [_txtDomicilio setStringValue:[arreglo objectAtIndex:1]];
    [_cmbGenero setStringValue:[arreglo objectAtIndex:2]];
    
    [archivo closeFile];
}

- (IBAction)Eliminar:(id)sender {
    //eliminar contenido del archivo
    [archivo truncateFileAtOffset:0];
    [archivo closeFile];
}


-(void) MessageBox:(NSString *)Message andtitle:(NSString *)titulo{
    
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"Continuar"];
    [alert setMessageText:titulo];
    [alert setInformativeText:Message];
    [alert setAlertStyle:NSInformationalAlertStyle];
    [alert runModal];
}


- (void)createFileWithName:(NSString *)fileName
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:fileName];
    
    NSFileManager *manager = [NSFileManager defaultManager];
    // 1st, This funcion could allow you to create a file with initial contents.
    // 2nd, You could specify the attributes of values for the owner, group, and permissions.
    // Here we use nil, which means we use default values for these attibutes.
    // 3rd, it will return YES if NSFileManager create it successfully or it exists already.
    if ([manager createFileAtPath:filePath contents:nil attributes:nil]) {
        NSLog(@"Created the File Successfully.");
    } else {
        NSLog(@"Failed to Create the File");
    }
}

@end
