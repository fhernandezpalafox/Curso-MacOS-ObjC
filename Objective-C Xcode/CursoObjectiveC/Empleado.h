//
//  Empleado.h
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 01/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Persona.h"

@interface Empleado : Persona
{
    NSString *EmpleadoNivelEstudios;
}

-(id) initWithName:(NSString *)name andAge:(NSInteger *)age andEducation:(NSString *)education;
-(void) print;

@end
