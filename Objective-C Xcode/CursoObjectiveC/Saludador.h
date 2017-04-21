//
//  Saludador.h
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 30/08/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//
#include <stdio.h>
#import <Foundation/Foundation.h>

@interface  Saludador : NSObject {
    char * saludo;
}
- init;
- (id) initWithSaludo:(NSString *)unSaludo;
- (void)setSaludo:(char *)unSaludo;
- (void)setSaludo:(char *)unSaludo y:(char *)unaColetilla;
- (void)saluda;
@end
