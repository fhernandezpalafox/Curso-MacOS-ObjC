//
//  CustomDialogController.m
//  Componentes02
//
//  Created by Felipe Hernandez on 15/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CustomDialogController.h"


@implementation CustomDialogController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Asignacion de los datos desde la creacion del NSViewController
    [_Titulo setStringValue:@"Este es mi titulo"];
    [_Descripcion setStringValue:@"Esta es una descripcion larga"];
    
    
    //Propiedades de los labels
    [_Titulo setFont:[NSFont fontWithName:@"Herculam" size:15]];
    [_Titulo setTextColor:[NSColor redColor]];
    [_Titulo setBackgroundColor:[NSColor blueColor]];
    [_Titulo setDrawsBackground:YES];
    [_Titulo setSelectable:YES];
    
    //Cargar la Imagen
    NSImage *img = [NSImage imageNamed:@"iconInformation.png"];
    //Mostrar la imagen
    [_Imagen setImage:img];

    //instancia de la clase
    dialog = [[CustomDialogController alloc]init];
    
    //asignar el nombre de la ventana
    [ self setTitle:@"Dialog"];
}


- (IBAction)eventAceptar:(id)sender {
     [dialog dismissViewController:self];
}

- (IBAction)eventCancelar:(id)sender {
    [dialog dismissViewController:self];
}
@end
