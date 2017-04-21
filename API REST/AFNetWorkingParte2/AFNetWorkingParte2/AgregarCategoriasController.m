//
//  AgregarCategoriasController.m
//  AFNetWorkingParte2
//
//  Created by Felipe Hernandez on 13/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import "AgregarCategoriasController.h"
#import "AFNetworking.h"


@interface AgregarCategoriasController ()
{
    NSString* idCategory;
    ViewController *view;
}
@end

@implementation AgregarCategoriasController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
     view = [[ViewController alloc] init];
    
     view =  _viewController;
    
    
    if (_category != nil) {
        
        if (_esNuevo ==  NO) {
            
            idCategory = _category.categoryID;
            [_txtNombre setStringValue:_category.categoryName];
            [_txtDescripcion setStringValue:_category.description];
            _btnGuardar.enabled = NO;
            
        }else{
            _btnModificar.enabled  =  NO;
        }
        
    }else{
        _btnModificar.enabled  =  NO;
    }
    
     [_progressIndicator setHidden:YES];
}

- (IBAction)onGuardar:(id)sender {
    
    @try {
        
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        
        //Entradas y salidas
        manager.responseSerializer = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingAllowFragments];
        
        AFJSONRequestSerializer *serializer = [AFJSONRequestSerializer serializer];
        [serializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        [serializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        
        manager.requestSerializer = serializer;
        
        
        [self InicializarProgress];
        
        NSDictionary *parameters = @{@"CategoryID": @"0",
                                     @"CategoryName":_txtNombre.stringValue,
                                     @"Description": _txtDescripcion.stringValue};
        
        
        [manager POST:@"http://apiestudiosalle2.azurewebsites.net/v1/Categories/AddCategoryV1" parameters:parameters progress:nil
              success:^(NSURLSessionTask *task, id responseObject)
         {
             
             //Esperar 5 segundos
             [NSThread sleepForTimeInterval:5.0f];
             
             [self FinalizarProgress];
             
             NSLog(@"JSON: %@", responseObject);
             
             [_lblInformacion setStringValue:responseObject];
             
             [view CargaDatos];
             
         } failure:^(NSURLSessionTask *operation, NSError *error) {
             NSLog(@"Error: %@", error);
             
             [self FinalizarProgress];
         }];
        
    } @catch (NSException *exception) {
        NSLog(@"Error %@",exception.reason);
    } @finally {
        NSLog(@"Finaizar");
    }

}

- (IBAction)onModificar:(id)sender {
    
    @try {
        
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        
        //Entradas y salidas
        
        manager.responseSerializer = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingAllowFragments];
        
        AFJSONRequestSerializer *serializer = [AFJSONRequestSerializer serializer];
        [serializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        [serializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        
        manager.requestSerializer = serializer;
        
        
        [self InicializarProgress];
        
        NSDictionary *parameters = @{@"CategoryID": idCategory,
                                     @"CategoryName":_txtNombre.stringValue,
                                     @"Description": _txtDescripcion.stringValue};
        
        [manager PUT:@"http://apiestudiosalle2.azurewebsites.net/v1/Categories/UpdateCategory" parameters:parameters
             success:^(NSURLSessionTask *task, id responseObject)
         {
             
             //Esperar 5 segundos
             [NSThread sleepForTimeInterval:5.0f];
             
             [self FinalizarProgress];
             
             NSLog(@"JSON: %@", responseObject);
             
             [_lblInformacion setStringValue:responseObject];
             
             [view CargaDatos];
             
         } failure:^(NSURLSessionTask *operation, NSError *error) {
             NSLog(@"Error: %@", error);
             
             [self FinalizarProgress];
         }];
        
    } @catch (NSException *exception) {
        NSLog(@"Error %@",exception.reason);
    } @finally {
        NSLog(@"Finaizar");
    }

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


@end
