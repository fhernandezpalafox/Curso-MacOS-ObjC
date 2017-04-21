//
//  MKMapViewController.h
//  Componentes02
//
//  Created by Felipe Hernandez on 18/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <MapKit/MapKit.h>

@interface MKMapViewController : NSViewController
- (IBAction)cambiarTipoMapa:(id)sender;
@property (weak) IBOutlet MKMapView *Mapa;

@end
