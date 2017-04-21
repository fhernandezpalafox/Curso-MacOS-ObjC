//
//  calculadora12.m
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 29/08/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "calculadora12.h"

@implementation  calculadora12: NSObject


//metodos del acomulador
-(void) setAcumulador:(double)value
{
    acumulador = value;
}

-(void) clear
{
    acumulador = 0;
}

-(double) acumulador
{
    return acumulador;
}

//metodos aritmeticos
-(void) suma:(double) value
{
    acumulador += value;
}

-(void) resta:(double) value
{
    acumulador -= value;
}

-(void) multiplicacion:(double) value
{
    acumulador *= value;
}

-(void) division:(double) value
{
    acumulador /= value;
}



@end
