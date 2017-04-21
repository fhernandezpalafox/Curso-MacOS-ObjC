//
//  ViewController.h
//  AFNetWorkingParte1
//
//  Created by Felipe Hernandez on 13/04/17.
//  Copyright © 2017 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <MapKit/MapKit.h>


@interface ViewController : NSViewController
{
    NSDictionary *datosJson;
}

@property (weak) IBOutlet NSTextField *txtCiudad;
- (IBAction)onConsultar:(id)sender;
@property (weak) IBOutlet NSTextField *txtContenido;
@property (weak) IBOutlet NSProgressIndicator *progressIndicator;
@property (weak) IBOutlet MKMapView *Mapa;

@end

