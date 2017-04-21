//
//  ViewController.h
//  AppEjercicio9
//
//  Created by Felipe Hernandez on 13/11/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (weak) IBOutlet NSPopUpButton *popUp;

@property (weak) IBOutlet NSTextField *txtItem;
- (IBAction)Agregar:(id)sender;
@property (weak) IBOutlet NSTextField *lblInformacion;
- (IBAction)Cambia:(id)sender;
@property (weak) IBOutlet NSPopUpButton *Lista;

@end

