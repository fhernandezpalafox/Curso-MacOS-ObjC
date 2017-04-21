//
//  Persona.h
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 01/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Persona : NSObject
{
    NSString *nombrePersona;
    NSInteger *edadPersona;
}

-(id)initWithName:(NSString *)name andAge:(NSInteger *)age;
-(void)print;

//polimorfismo
-(void) EstoyCasado;
-(void) estoyCasdo:(BOOL)estatus;

@end
