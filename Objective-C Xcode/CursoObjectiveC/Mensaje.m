//
//  mensaje.m
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 30/08/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mensaje.h"

@implementation Mensaje
-(const char *) Saludo
{
    return "Hola  felipe xD";
}

+(NSString *) Saludo2
{
    return @"Hola  felipe xD";
}

+(NSString *)saludonombre:(NSString *) nombre Andapellido:(NSString *)apellido
{
    NSString * cadena =  [NSString stringWithFormat:@"tu nombre es %@, tu apellido es %@", nombre,apellido];
    return  cadena;
}
@end
