//
//  AppDelegate.m
//  AppEjercicio21
//
//  Created by Felipe Hernandez on 03/01/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

-(id) init{
    
    //Ruta para la base de datos, estara en la library que es privada, ya que Documents se comparte con el usuario mediante Itunes
    NSArray *paths  =  NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory  =  [paths objectAtIndex:0];
    
    //Añadimos el nombre del fichero de la base de datos
    self.databasepath = [documentsDirectory stringByAppendingPathComponent:@"Contactos.db"];
    
    //cargo la base de datos
    [self loadDB];
    
    return self;
}

-(void) loadDB{
    
    BOOL exito;
    
    NSFileManager  *filemanager = [NSFileManager defaultManager];
    
    NSError *error;
    
    NSArray *paths  = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    
    NSString *libraryDirectory  = [paths objectAtIndex:0];
    
    NSString *writetableDBPath = [libraryDirectory stringByAppendingPathComponent:@"Contactos.db"];
    
    exito = [filemanager fileExistsAtPath:writetableDBPath];
    
    if (exito) return;
    
    //si no existe en Library, la copio desde original.
    NSString *defaulDBPath  = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"Contactos.db"];
    
    exito  = [filemanager copyItemAtPath:defaulDBPath toPath:writetableDBPath error:&error];
    
    if (!exito)
    {
        NSAssert1(0,@"Error al cargar la base de datos, error = '%@'. ", [error localizedDescription]);
    }
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
