//
//  ViewController.m
//  AFNetWorkingParte1
//
//  Created by Felipe Hernandez on 13/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    [_progressIndicator setHidden:YES];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)onConsultar:(id)sender {

    
    @try {
        
        AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
        
        manager.responseSerializer = [AFJSONResponseSerializer serializerWithReadingOptions:NSJSONReadingAllowFragments];
        
        AFJSONRequestSerializer *serializer = [AFJSONRequestSerializer serializer];
        [serializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        [serializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        
        [self InicializarProgress];
        
        
        [manager GET:[NSString stringWithFormat:@"http://api.openweathermap.org/data/2.5/weather?q=%@&apikey=b0dbac6b44483fedc0e1a7e447508ebc",_txtCiudad.stringValue]  parameters:nil progress:nil
             success:^(NSURLSessionTask *task, id responseObject)
         {
             [self FinalizarProgress];
             
             [_txtContenido setStringValue:responseObject];
             
             
             datosJson = (NSDictionary *) responseObject;
             
             NSObject* key =  [datosJson valueForKey:@"coord"];
             
             double latitud = [[key valueForKey:@"lat"] doubleValue];
             double longuitud = [[key valueForKey:@"lon"] doubleValue];
             
             //********************Mapa***********************//
             CLLocationCoordinate2D coordenada  = CLLocationCoordinate2DMake(latitud,longuitud);
             MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coordenada, 2000, 2000);
             MKPointAnnotation *anotacion = [[MKPointAnnotation alloc]init];
             [anotacion setTitle:@"Leon"];
             [anotacion setCoordinate:coordenada];
             
             [self.Mapa setRegion:region];
             [self.Mapa addAnnotation:anotacion];
             
             
             
             //NSLog(@"JSON: %@", responseObject);
         } failure:^(NSURLSessionTask *operation, NSError *error) {
             NSLog(@"Error: %@", error);
             [self FinalizarProgress];
         }];
        
        
        
    } @catch (NSException *exception) {
        NSLog(@"Error: %@", exception.reason);
    } @finally {
        NSLog(@"Finalizar");
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
