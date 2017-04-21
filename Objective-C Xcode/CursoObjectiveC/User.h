//
//  User.h
//  CursoObjectiveC
//
//  Created by Felipe Hernandez on 07/09/16.
//  Copyright © 2016 Felipe Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic, strong) NSString *nombre;
@property (nonatomic, strong) NSString *apellido;
@property (nonatomic, strong) NSNumber *edad;

-(NSString *)nombreCompleto;

@end
