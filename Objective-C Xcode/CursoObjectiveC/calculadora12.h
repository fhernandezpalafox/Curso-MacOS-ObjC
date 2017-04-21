//
//  calculadora12.h
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 29/08/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface  calculadora12: NSObject
{
    double acumulador;
}

//metodos del acomulador
-(void) setAcumulador:(double)value;
-(void) clear;
-(double) acumulador;
//metodos aritmeticos
-(void) suma:(double) value;
-(void) resta:(double) value;
-(void) multiplicacion:(double) value;
-(void) division:(double) value;

@end


