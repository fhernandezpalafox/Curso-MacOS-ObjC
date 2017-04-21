//
//  CustomViewController.m
//  AppEjercicio3
//
//  Created by Felipe Hernandez on 28/10/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()

@end

@implementation CustomViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
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
    dialog = [[CustomViewController alloc]init];
    
    //asignar el nombre de la ventana
    [ self setTitle:@"Dialog"];
}

- (IBAction)eventCancelar:(id)sender {
    [dialog dismissViewController:self];
}

- (IBAction)eventAceptar:(id)sender {
    [dialog dismissViewController:self];
}
@end
