//
//  Persona.m
//  AppEjercicio12
//
//  Created by Felipe Hernandez on 13/11/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "Persona.h"

@implementation Persona

@synthesize Nombre = Nombre;
@synthesize Domicilio = Domicilio;

-(id) init{
    self = [super init];
    if (self) {
        Nombre = @"Felipe Hernandez";
        Domicilio = @"Betania 1616. Col. San felipe de jesus";
    }
    return self;
}

@end
