//
//  ViewController.m
//  AFNetWorkingParte2
//
//  Created by Felipe Hernandez on 13/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "Category.h"
#import "AgregarCategoriasController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _Categorias  = [[NSMutableArray alloc] init];
    
    [self CargaDatos];
}


-(void) CargaDatos{

     [_Categorias removeAllObjects];
    
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    //Entradas y salidas
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [self InicializarProgress];
    
    
    [manager GET:@"http://apiestudiosalle2.azurewebsites.net/v1/Categories/getAllCategories" parameters:nil progress:nil
         success:^(NSURLSessionTask *task, id responseObject)
     {
         datosJson = (NSDictionary *) responseObject;
         
         for (NSObject* key in datosJson) {
             
             Category *categoria = [[Category alloc] init];
             [categoria setCategoryID:(NSString *)[key valueForKey:@"categoryID"]];
             [categoria setCategoryName:(NSString *)[key valueForKey:@"categoryName"]];
             [categoria setDescription:(NSString *)[key valueForKey:@"description"]];
             
             [_Categorias addObject:categoria];
         }
         
         //Esperar 5 segundos
         [NSThread sleepForTimeInterval:5.0f];
         
         [_Tabla reloadData];
         
         [self FinalizarProgress];
         
         //NSLog(@"JSON: %@", responseObject);
     } failure:^(NSURLSessionTask *operation, NSError *error) {
         NSLog(@"Error: %@", error);
         [self FinalizarProgress];
     }];
}


-(NSInteger) numberOfRowsInTableView:(NSTableView *)tableView{
    return  [_Categorias count];
}

-(id) tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row{
    
    Category *p = [_Categorias objectAtIndex:row];
    NSString *identifier = [tableColumn identifier];
    NSString *columna = [p valueForKey:identifier];
    return columna;
    
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


-(void) InicializarProgress{
    
    [_progressIndicator setHidden:NO];
    [_progressIndicator setIndeterminate:YES];
    [_progressIndicator setUsesThreadedAnimation:YES];
    [_progressIndicator startAnimation:nil];
}

-(void) FinalizarProgress{
    [_progressIndicator stopAnimation:nil];
    [_progressIndicator setHidden:YES];
}

- (IBAction)onEliminar:(id)sender {
    
    @try {
        
        NSInteger row  = [_Tabla selectedRow];
        
        if( row != -1){
            
            Category *category = [_Categorias objectAtIndex:row];
            //API
            
            AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
            
            manager.responseSerializer = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingAllowFragments];
            
            AFJSONRequestSerializer *serializer = [AFJSONRequestSerializer serializer];
            [serializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
            [serializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
            
            [self InicializarProgress];
            
            [manager DELETE:[NSString stringWithFormat:@"http://apiestudiosalle2.azurewebsites.net/v1/Categories/DeleteCategory/%@",category.categoryID]  parameters:nil
                    success:^(NSURLSessionTask *task, id responseObject)
             {
                 
                 [self MessageBox:[NSString stringWithFormat:@"%@",responseObject] andTitle:@"Proceso"];
                 //Esperar 5 segundos
                 
                 [self FinalizarProgress];
                 
                 [_Categorias removeObjectAtIndex:row];
                 [_Tabla reloadData];
                 
                 //NSLog(@"JSON: %@", responseObject);
             } failure:^(NSURLSessionTask *operation, NSError *error) {
                 NSLog(@"Error: %@", error);
                 [self FinalizarProgress];
             }];
            
        }else{
            [self MessageBox:@"Selecciona una fila" andTitle:@"Tabla"];
            return;
        }
        
    } @catch (NSException *exception) {
        [self MessageBox:@"Error" andTitle:exception.reason];
    } @finally {
        NSLog(@"Finalizar");
    }
    
}

-(void)MessageBox:(NSString *)Message andTitle:(NSString *)Title{
    NSAlert *alerta = [[NSAlert alloc] init];
    [alerta addButtonWithTitle:@"Continuar"];
    [alerta setMessageText:Title];
    [alerta setInformativeText:Message];
    [alerta setAlertStyle:NSAlertStyleInformational];
    [alerta runModal];
}

-(void)prepareForSegue:(NSStoryboardSegue *)segue sender:(id)sender{
    
    
    if ([[segue identifier] isEqualToString:@"agregar"]) {
        
        AgregarCategoriasController *agregar = [segue destinationController];
        agregar.esNuevo  = YES;
        agregar.viewController =  self;
        
    }else if([[segue identifier] isEqualToString:@"modificar"]){
        
        @try {
            
            NSInteger row  = [_Tabla selectedRow];
            
            if( row != -1){
                
                Category *category = [_Categorias objectAtIndex:row];
                AgregarCategoriasController *agregar = [segue destinationController];
                agregar.category = category;
                agregar.esNuevo  = NO;
                agregar.viewController =  self;
                
            }else{
                [self MessageBox:@"Selecciona una fila" andTitle:@"Tabla"];
                return;
            }
            
        } @catch (NSException *exception) {
            [self MessageBox:@"Error" andTitle:exception.reason];
        } @finally {
            NSLog(@"Finalizar");
        }
        
        
    }
}
@end
