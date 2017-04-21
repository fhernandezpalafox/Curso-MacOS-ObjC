//
//  Saludador.m
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 30/08/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <stdio.h>
#import <stdlib.h>
#import <string.h>
#import "Saludador.h"

@implementation Saludador

-init
{
	   if((self = [super init]))
       {
           saludo = "Hola mundo";
           NSLog(@"Entro al constructor init");
       }
	   return  self;
}

-(id)initWithSaludo:(NSString *)unSaludo
{
    self = [super init];
    if (self) {
        NSLog(@"Este es un saludo desde el constructor %@",unSaludo);
    }
    return self;
}

-(void)setSaludo:(char *)unSaludo
{
    saludo  =  unSaludo;
}

-(void)setSaludo:(char *)unSaludo y:(char *)unaColetilla
{
    saludo  = malloc(strlen(unSaludo)+ strlen(unaColetilla) + 1);
    strcpy(saludo,unSaludo);
    strcat(saludo,unaColetilla);
}

-(void)saluda
{
	   printf("%s\n",saludo);
}


@end
