//
//  Persona.m
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 01/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "Persona.h"

@implementation Persona

-(id) initWithName:(NSString *)name andAge:(NSInteger *)age{
    nombrePersona = name;
    edadPersona = age;
    return self;
}

-(void) print {
    NSLog(@"Nombre: %@",nombrePersona);
    NSLog(@"Edad: %i",(int)edadPersona);
}

-(void) EstoyCasado{
    NSLog(@"No lo estoy clase (Persona)");
}

-(void) estoyCasdo:(BOOL)estatus{
    NSLog(@" Yo clase (Persona) %@",(estatus == YES)?@"Si estoy casado":@"No estoy casado");
}
@end
