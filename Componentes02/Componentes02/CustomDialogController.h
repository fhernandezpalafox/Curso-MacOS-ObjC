//
//  CustomDialogController.h
//  Componentes02
//
//  Created by Felipe Hernandez on 15/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface CustomDialogController : NSViewController
{
    CustomDialogController *dialog;
}
@property (weak) IBOutlet NSImageView *Imagen;
@property (weak) IBOutlet NSTextField *Titulo;
@property (weak) IBOutlet NSTextField *Descripcion;

- (IBAction)eventAceptar:(id)sender;
- (IBAction)eventCancelar:(id)sender;


@end
