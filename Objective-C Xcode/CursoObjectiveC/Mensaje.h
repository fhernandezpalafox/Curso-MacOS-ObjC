//
//  Mensaje.h
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 30/08/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#include <stdio.h>
#import <Foundation/Foundation.h>

@interface Mensaje : NSObject
-(const char *) Saludo;
+(NSString *) Saludo2;
+(NSString *)saludonombre:(NSString *) nombre Andapellido:(NSString *)apellido;
@end
