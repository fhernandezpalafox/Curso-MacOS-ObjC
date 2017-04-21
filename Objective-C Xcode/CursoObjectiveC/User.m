//
//  User.m
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 07/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import "User.h"

@implementation User

-(NSString *)nombreCompleto {
    return [NSString stringWithFormat:@"%@ %@",self.nombre, self.apellido];
}

@end
