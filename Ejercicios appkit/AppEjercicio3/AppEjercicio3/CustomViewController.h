//
//  CustomViewController.h
//  AppEjercicio3
//
//  Created by Felipe Hernandez on 28/10/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CustomViewController : NSViewController
{
    CustomViewController *dialog;
}
@property (weak) IBOutlet NSImageView *Imagen;
@property (weak) IBOutlet NSTextField *Titulo;
@property (weak) IBOutlet NSTextField *Descripcion;
- (IBAction)eventCancelar:(id)sender;
- (IBAction)eventAceptar:(id)sender;

@end
