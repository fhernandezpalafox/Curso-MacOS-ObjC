//
//  PruebaCategorias.m
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 02/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "NSString+PruebaCategorias.h"

@implementation NSString (PruebaCategorias)

-(int) contarLetraA{
 
    int cont = 0;
    for (int i=0; i < [self length]; i++) {
        if ([self characterAtIndex:i] == 'a') {
            cont++;
        }
    }
    return cont;
}

-(NSString *) capitalizedString{
    NSRange rango = NSMakeRange(0, 1);
    NSString *nuevoTexto = [self stringByReplacingCharactersInRange:rango withString:@"A"];
    return nuevoTexto;
}
@end
