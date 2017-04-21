//
//  ViewController.h
//  AppEjercicio5
//
//  Created by Felipe Hernandez on 28/10/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController
@property int numero;
@property NSColor *color;
- (IBAction)Seleccionar:(id)sender;
@property (weak) IBOutlet NSTextField *txtSelecionado;
@property BOOL Habilitar;




@end

