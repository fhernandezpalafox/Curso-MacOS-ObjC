//
//  Alumno.m
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 02/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "Alumno.h"

@implementation Alumno

-(void) Imprimir{
    NSLog(@"Alumno: Felipe Hernandez");
}

-(void) Suma:(int)parametro1 andSecond:(int)parametro2{
    NSLog(@"La suma es: %i",(parametro1+parametro2));
}
-(void) Resta :(int)parametro1 andSecond:(int)parametro2{
    NSLog(@"La resta es: %i",(parametro1-parametro2));
}

@end
