//
//  MKMapViewController.m
//  Componentes02
//
//  Created by Felipe Hernandez on 18/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "MKMapViewController.h"

@implementation MKMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [self setTitle:@"Mapkit view"];
    
    
    CLLocationCoordinate2D coordenada = CLLocationCoordinate2DMake(21.152676, -101.711698);
    MKCoordinateRegion region =  MKCoordinateRegionMakeWithDistance(coordenada, 2000, 2000);
    MKPointAnnotation *anotacion = [[MKPointAnnotation alloc]init];
    [anotacion setTitle:@"De la salle bajio"];
    [anotacion setCoordinate:coordenada];
    
    [self.Mapa setRegion:region];
    [self.Mapa addAnnotation:anotacion];
    
}

- (IBAction)cambiarTipoMapa:(id)sender {
    
    switch ([sender selectedSegment]) {
        case 0:
            [_Mapa setMapType:MKMapTypeStandard];
            break;
        case 1:
            [_Mapa setMapType:MKMapTypeSatellite];
            break;
        case 2:
            [_Mapa setMapType:MKMapTypeHybrid];
            break;
        default:
            break;
    }
    
}
@end
