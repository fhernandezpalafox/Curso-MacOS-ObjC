//
//  ViewController.h
//  AppEjercicio6
//
//  Created by Felipe Hernandez on 29/10/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (weak) IBOutlet NSTextField *txtDescripcion;
@property (weak) IBOutlet NSDatePicker *dtFecha;
@property (weak) IBOutlet NSTextField *lbldato;

- (IBAction)mostrarInformacion:(id)sender;

@end

