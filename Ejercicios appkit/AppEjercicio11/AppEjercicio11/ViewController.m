//
//  ViewController.m
//  AppEjercicio11
//
//  Created by Felipe Hernandez on 13/11/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    
    CLLocationCoordinate2D coordenada = CLLocationCoordinate2DMake(21.152676, -101.711698);
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coordenada, 2000, 2000);
    MKPointAnnotation *anotacion = [[MKPointAnnotation alloc]init];
    [anotacion setTitle:@"De La Salle Bajio"];
    [anotacion setCoordinate:coordenada];
    
    [self.Mapa setRegion:region];
    [self.Mapa addAnnotation:anotacion];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)CambiarTipoMapa:(id)sender {
    
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
