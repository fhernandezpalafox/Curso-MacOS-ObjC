//
//  NSDateViewController.h
//  Componentes02
//
//  Created by Felipe Hernandez on 16/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface NSDateViewController : NSViewController
@property (weak) IBOutlet NSTextField *lbldato;
@property (weak) IBOutlet NSTextField *txtNombre;
@property (weak) IBOutlet NSDatePicker *dtFecha;

- (IBAction)mostrarInformacion:(id)sender;

@end
