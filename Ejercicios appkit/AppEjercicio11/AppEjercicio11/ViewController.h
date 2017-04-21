//
//  ViewController.h
//  AppEjercicio11
//
//  Created by Felipe Hernandez on 13/11/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <MapKit/MapKit.h>

@interface ViewController : NSViewController
- (IBAction)CambiarTipoMapa:(id)sender;
@property (weak) IBOutlet MKMapView *Mapa;

@end

