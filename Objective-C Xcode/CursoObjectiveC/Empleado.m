//
//  Empleado.m
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 01/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "Empleado.h"

@implementation Empleado

-(id) initWithName:(NSString *)name andAge:(NSInteger *)age andEducation:(NSString *)education{
    nombrePersona = name;
    edadPersona  = age;
    EmpleadoNivelEstudios =  education;
    return self;
}

-(void)print{
    NSLog(@"Name: %@",nombrePersona);
    NSLog(@"Age: %i",(int)edadPersona);
    NSLog(@"Education: %@",EmpleadoNivelEstudios);
}

-(void) EstoyCasado{
    NSLog(@"Si lo estoy clase (Empleado)");
}

-(void) estoyCasdo:(BOOL)estatus{
    NSLog(@" Yo clase (Empleado) %@",(estatus == YES)?@"Si estoy casado":@"No estoy casado");
}
@end
