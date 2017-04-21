//
//  ViewController.m
//  ConociendoXcode
//
//  Created by Felipe Hernandez on 08/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "ViewController.h"

#import "logicaNegocio.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_lblRespuesta setStringValue:@"He cargado desde el viewDidLoad"];
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)Mostrar:(id)sender {
    NSString *nombre = [[NSString alloc] init];
    nombre = @"Hola soy: ";
    nombre  = [nombre stringByAppendingString:_txtNombre.stringValue];
    [_lblRespuesta setStringValue:nombre];

}

- (IBAction)MostrarResultado:(id)sender {
    logicaNegocio *logica = [[logicaNegocio alloc] init];
    [_lblRespuesta setStringValue:[logica mandarResultadoSuma]];
}
@end
