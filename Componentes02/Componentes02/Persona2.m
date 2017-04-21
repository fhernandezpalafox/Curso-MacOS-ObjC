//
//  Persona2.m
//  Componentes02
//
//  Created by Felipe Hernandez on 17/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "Persona2.h"

@implementation Persona2
@synthesize Nombre =  Nombre;
@synthesize Domicilio = Domicilio;

-(id)init{

    self = [super init];
    if (self) {
        Nombre = @"Felipe Hernandez";
        Domicilio = @"Betania 1616. col. San felipe de jesus";
    }
    return self;
}
@end
