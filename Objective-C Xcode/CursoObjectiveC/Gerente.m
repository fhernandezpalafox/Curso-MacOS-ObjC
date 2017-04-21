//
//  Gerente.m
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 02/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "Gerente.h"

@implementation Gerente


-(void) EstoyCasado{
    NSLog(@"No lo estoy clase (Gerente)");
}

-(void) estoyCasdo:(BOOL)estatus{
    NSLog(@" Yo  Clase (Gerente) %@",(estatus == YES)?@"Si estoy casado":@"No estoy casado");
}

-(void) mostrarSalario{

    NSLog(@"Este es el salario de mi gerente");
}
@end
