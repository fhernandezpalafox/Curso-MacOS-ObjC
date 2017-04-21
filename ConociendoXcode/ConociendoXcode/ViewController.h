//
//  ViewController.h
//  ConociendoXcode
//
//  Created by Felipe Hernandez on 08/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property (weak) IBOutlet NSTextField *txtNombre;
- (IBAction)Mostrar:(id)sender;
@property (weak) IBOutlet NSTextField *lblRespuesta;
- (IBAction)MostrarResultado:(id)sender;


@end

