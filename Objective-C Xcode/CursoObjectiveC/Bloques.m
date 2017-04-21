//
//  Bloques.m
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 05/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "Bloques.h"

@implementation Bloques

//Como realizariamos un meotodo que ejecutaria varias veces una operacion +, *, /, -
-(void) variasOperaciones:(int)a and:(int)b andtipo:(int)tipo{
    if (tipo == 1) {
        NSLog(@"La suma es %i ",(a + b));
    }else if(tipo == 2){
        NSLog(@"La multiplicacion es %i ",(a * b));
    }
    //etc......
}

//Bloque #1 Operacion
int operacion(int op1,int op2, int (^operacion)(int,int)){ return operacion(op1,op2);}

//Ejecucion  del bloque dentro de una funcion
-(void) bloqueDentroFuncion{
    
   int multiplicacion = operacion(3,2,^(int a,int b){
       return a * b;
    });
    
   int suma = operacion(2, 2, ^int(int a, int b) {
        return  a + b;
    });
    
    NSLog(@"La multiplicacion es %i",multiplicacion);
    NSLog(@"La suma es %i",suma);
    
}

//Bloque #2
double (^operacionDivision)(double,double) = ^(double op1,double op2){
    return op1/op2;
};

//Implementacion del bloque #2 de division
-(void) division{
    NSLog(@"La division es %i",(int)operacionDivision(12,2));
}

//Bloque #3
void(^NombrePersona)(NSString *)= ^(NSString *nombre){
    NSLog(@"El nombre de la persona es %@",nombre);
};

-(void) imprimirNombre{
    NombrePersona(@"Felipe");
    NombrePersona(@"David");
}
@end
