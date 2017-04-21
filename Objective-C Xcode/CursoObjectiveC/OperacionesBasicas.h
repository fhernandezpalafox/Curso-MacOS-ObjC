//
//  OperacionesBasicasDelegate.h
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 02/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>

//COMPORTAMIENTOS
@protocol OperacionesBasicas <NSObject>

@required
//Lista de metodos requeridos
-(void) Suma:(int)parametro1 andSecond:(int)parametro2;
-(void) Resta :(int)parametro1 andSecond:(int)parametro2;

@optional
//Lista de metodos opcionales
-(void) Multiplicacion :(int)parametro1 andSecond:(int)parametro2;
-(void) Dividion :(int)parametro1 andSecond:(int)parametro2;

@end
